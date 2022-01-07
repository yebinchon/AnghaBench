
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct virtio_gpu_object {TYPE_2__ tbo; int placement; } ;
struct virtio_gpu_fpriv {int ctx_id; } ;
struct virtio_gpu_fence {int f; } ;
struct virtio_gpu_device {int has_virgl_3d; } ;
struct virtio_gpu_box {int y; int x; int h; int w; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct drm_virtgpu_3d_transfer_to_host {int level; int box; int bo_handle; int offset; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;


 int ENOENT ;
 int ENOMEM ;
 int convert_to_hw_box (struct virtio_gpu_box*,int *) ;
 int dma_fence_put (int *) ;
 int dma_resv_add_excl_fence (int ,int *) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct virtio_gpu_object* gem_to_virtio_gpu_obj (struct drm_gem_object*) ;
 int ttm_bo_validate (TYPE_2__*,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;
 int virtio_gpu_cmd_transfer_to_host_2d (struct virtio_gpu_device*,struct virtio_gpu_object*,int ,int ,int ,int ,int ,int *) ;
 int virtio_gpu_cmd_transfer_to_host_3d (struct virtio_gpu_device*,struct virtio_gpu_object*,int ,int ,int ,struct virtio_gpu_box*,struct virtio_gpu_fence*) ;
 struct virtio_gpu_fence* virtio_gpu_fence_alloc (struct virtio_gpu_device*) ;
 int virtio_gpu_object_reserve (struct virtio_gpu_object*,int) ;
 int virtio_gpu_object_unreserve (struct virtio_gpu_object*) ;

__attribute__((used)) static int virtio_gpu_transfer_to_host_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;
 struct virtio_gpu_fpriv *vfpriv = file->driver_priv;
 struct drm_virtgpu_3d_transfer_to_host *args = data;
 struct ttm_operation_ctx ctx = { 1, 0 };
 struct drm_gem_object *gobj = ((void*)0);
 struct virtio_gpu_object *qobj = ((void*)0);
 struct virtio_gpu_fence *fence;
 struct virtio_gpu_box box;
 int ret;
 u32 offset = args->offset;

 gobj = drm_gem_object_lookup(file, args->bo_handle);
 if (gobj == ((void*)0))
  return -ENOENT;

 qobj = gem_to_virtio_gpu_obj(gobj);

 ret = virtio_gpu_object_reserve(qobj, 0);
 if (ret)
  goto out;

 ret = ttm_bo_validate(&qobj->tbo, &qobj->placement, &ctx);
 if (unlikely(ret))
  goto out_unres;

 convert_to_hw_box(&box, &args->box);
 if (!vgdev->has_virgl_3d) {
  virtio_gpu_cmd_transfer_to_host_2d
   (vgdev, qobj, offset,
    box.w, box.h, box.x, box.y, ((void*)0));
 } else {
  fence = virtio_gpu_fence_alloc(vgdev);
  if (!fence) {
   ret = -ENOMEM;
   goto out_unres;
  }
  virtio_gpu_cmd_transfer_to_host_3d
   (vgdev, qobj,
    vfpriv ? vfpriv->ctx_id : 0, offset,
    args->level, &box, fence);
  dma_resv_add_excl_fence(qobj->tbo.base.resv,
        &fence->f);
  dma_fence_put(&fence->f);
 }

out_unres:
 virtio_gpu_object_unreserve(qobj);
out:
 drm_gem_object_put_unlocked(gobj);
 return ret;
}
