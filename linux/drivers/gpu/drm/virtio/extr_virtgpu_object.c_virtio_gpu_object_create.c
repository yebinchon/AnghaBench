
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct virtio_gpu_object_params {int size; scalar_t__ virgl; int dumb; } ;
struct virtio_gpu_object {int tbo; int gem_base; int placement; int dumb; int hw_res_handle; } ;
struct virtio_gpu_fence_driver {int lock; } ;
struct virtio_gpu_fence {int f; } ;
struct TYPE_2__ {int bdev; } ;
struct virtio_gpu_device {struct virtio_gpu_fence_driver fence_drv; TYPE_1__ mman; int ddev; } ;
struct ttm_validate_buffer {int head; int * bo; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int PAGE_SIZE ;
 int drm_gem_object_get (int *) ;
 int drm_gem_object_init (int ,int *,int ) ;
 int kfree (struct virtio_gpu_object*) ;
 struct virtio_gpu_object* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int memset (struct ttm_validate_buffer*,int ,int) ;
 int roundup (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t ttm_bo_dma_acc_size (int *,int ,int) ;
 int ttm_bo_init (int *,int *,int ,int ,int *,int ,int,size_t,int *,int *,int *) ;
 int ttm_bo_type_device ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;
 int ttm_eu_fence_buffer_objects (struct ww_acquire_ctx*,struct list_head*,int *) ;
 int virtio_fence_signaled (int *) ;
 int virtio_gpu_cmd_create_resource (struct virtio_gpu_device*,struct virtio_gpu_object*,struct virtio_gpu_object_params*,struct virtio_gpu_fence*) ;
 int virtio_gpu_cmd_resource_create_3d (struct virtio_gpu_device*,struct virtio_gpu_object*,struct virtio_gpu_object_params*,struct virtio_gpu_fence*) ;
 int virtio_gpu_init_ttm_placement (struct virtio_gpu_object*) ;
 int virtio_gpu_object_list_validate (struct ww_acquire_ctx*,struct list_head*) ;
 int virtio_gpu_resource_id_get (struct virtio_gpu_device*,int *) ;
 int virtio_gpu_resource_id_put (struct virtio_gpu_device*,int ) ;
 int virtio_gpu_ttm_bo_destroy ;
 int virtio_gpu_unref_list (struct list_head*) ;

int virtio_gpu_object_create(struct virtio_gpu_device *vgdev,
        struct virtio_gpu_object_params *params,
        struct virtio_gpu_object **bo_ptr,
        struct virtio_gpu_fence *fence)
{
 struct virtio_gpu_object *bo;
 size_t acc_size;
 int ret;

 *bo_ptr = ((void*)0);

 acc_size = ttm_bo_dma_acc_size(&vgdev->mman.bdev, params->size,
           sizeof(struct virtio_gpu_object));

 bo = kzalloc(sizeof(struct virtio_gpu_object), GFP_KERNEL);
 if (bo == ((void*)0))
  return -ENOMEM;
 ret = virtio_gpu_resource_id_get(vgdev, &bo->hw_res_handle);
 if (ret < 0) {
  kfree(bo);
  return ret;
 }
 params->size = roundup(params->size, PAGE_SIZE);
 ret = drm_gem_object_init(vgdev->ddev, &bo->gem_base, params->size);
 if (ret != 0) {
  virtio_gpu_resource_id_put(vgdev, bo->hw_res_handle);
  kfree(bo);
  return ret;
 }
 bo->dumb = params->dumb;

 if (params->virgl) {
  virtio_gpu_cmd_resource_create_3d(vgdev, bo, params, fence);
 } else {
  virtio_gpu_cmd_create_resource(vgdev, bo, params, fence);
 }

 virtio_gpu_init_ttm_placement(bo);
 ret = ttm_bo_init(&vgdev->mman.bdev, &bo->tbo, params->size,
     ttm_bo_type_device, &bo->placement, 0,
     1, acc_size, ((void*)0), ((void*)0),
     &virtio_gpu_ttm_bo_destroy);

 if (ret != 0)
  return ret;

 if (fence) {
  struct virtio_gpu_fence_driver *drv = &vgdev->fence_drv;
  struct list_head validate_list;
  struct ttm_validate_buffer mainbuf;
  struct ww_acquire_ctx ticket;
  unsigned long irq_flags;
  bool signaled;

  INIT_LIST_HEAD(&validate_list);
  memset(&mainbuf, 0, sizeof(struct ttm_validate_buffer));


  drm_gem_object_get(&bo->gem_base);
  mainbuf.bo = &bo->tbo;
  list_add(&mainbuf.head, &validate_list);

  ret = virtio_gpu_object_list_validate(&ticket, &validate_list);
  if (ret == 0) {
   spin_lock_irqsave(&drv->lock, irq_flags);
   signaled = virtio_fence_signaled(&fence->f);
   if (!signaled)

    ttm_eu_fence_buffer_objects(&ticket, &validate_list,
           &fence->f);
   spin_unlock_irqrestore(&drv->lock, irq_flags);
   if (signaled)

    ttm_eu_backoff_reservation(&ticket, &validate_list);
  }
  virtio_gpu_unref_list(&validate_list);
 }

 *bo_ptr = bo;
 return 0;
}
