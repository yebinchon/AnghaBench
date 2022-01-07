
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_placement {int dummy; } ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_global {int dummy; } ;
struct TYPE_5__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct TYPE_7__ {unsigned long size; unsigned long num_pages; int placement; TYPE_1__ bus; int page_alignment; int * mm_node; int mem_type; } ;
struct dma_resv {int dummy; } ;
struct TYPE_6__ {struct dma_resv* resv; int vma_node; struct dma_resv _resv; } ;
struct ttm_buffer_object {void (* destroy ) (struct ttm_buffer_object*) ;int type; unsigned long num_pages; size_t acc_size; TYPE_3__ mem; TYPE_2__ base; struct ttm_bo_device* bdev; struct sg_table* sg; int * moving; int wu_mutex; int io_reserve_lru; int swap; int ddestroy; int lru; int cpu_writers; int list_kref; int kref; } ;
struct ttm_bo_device {TYPE_4__* glob; int vma_manager; } ;
struct sg_table {int dummy; } ;
typedef enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;
struct TYPE_8__ {int lru_lock; int bo_count; struct ttm_mem_global* mem_glob; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int TTM_PL_FLAG_CACHED ;
 int TTM_PL_FLAG_NO_EVICT ;
 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_SYSTEM ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int dma_resv_assert_held (struct dma_resv*) ;
 int dma_resv_init (struct dma_resv*) ;
 int dma_resv_trylock (struct dma_resv*) ;
 int drm_vma_node_reset (int *) ;
 int drm_vma_offset_add (int *,int *,unsigned long) ;
 int kfree (struct ttm_buffer_object*) ;
 int kref_init (int *) ;
 scalar_t__ likely (int) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void stub1 (struct ttm_buffer_object*) ;
 void stub2 (struct ttm_buffer_object*) ;
 int ttm_bo_add_to_lru (struct ttm_buffer_object*) ;
 void ttm_bo_default_destroy (struct ttm_buffer_object*) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 scalar_t__ ttm_bo_type_device ;
 scalar_t__ ttm_bo_type_sg ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_uses_embedded_gem_object (struct ttm_buffer_object*) ;
 int ttm_bo_validate (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_operation_ctx*) ;
 int ttm_mem_global_alloc (struct ttm_mem_global*,size_t,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (struct ttm_mem_global*,size_t) ;
 scalar_t__ unlikely (int) ;

int ttm_bo_init_reserved(struct ttm_bo_device *bdev,
    struct ttm_buffer_object *bo,
    unsigned long size,
    enum ttm_bo_type type,
    struct ttm_placement *placement,
    uint32_t page_alignment,
    struct ttm_operation_ctx *ctx,
    size_t acc_size,
    struct sg_table *sg,
    struct dma_resv *resv,
    void (*destroy) (struct ttm_buffer_object *))
{
 int ret = 0;
 unsigned long num_pages;
 struct ttm_mem_global *mem_glob = bdev->glob->mem_glob;
 bool locked;

 ret = ttm_mem_global_alloc(mem_glob, acc_size, ctx);
 if (ret) {
  pr_err("Out of kernel memory\n");
  if (destroy)
   (*destroy)(bo);
  else
   kfree(bo);
  return -ENOMEM;
 }

 num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 if (num_pages == 0) {
  pr_err("Illegal buffer object size\n");
  if (destroy)
   (*destroy)(bo);
  else
   kfree(bo);
  ttm_mem_global_free(mem_glob, acc_size);
  return -EINVAL;
 }
 bo->destroy = destroy ? destroy : ttm_bo_default_destroy;

 kref_init(&bo->kref);
 kref_init(&bo->list_kref);
 atomic_set(&bo->cpu_writers, 0);
 INIT_LIST_HEAD(&bo->lru);
 INIT_LIST_HEAD(&bo->ddestroy);
 INIT_LIST_HEAD(&bo->swap);
 INIT_LIST_HEAD(&bo->io_reserve_lru);
 mutex_init(&bo->wu_mutex);
 bo->bdev = bdev;
 bo->type = type;
 bo->num_pages = num_pages;
 bo->mem.size = num_pages << PAGE_SHIFT;
 bo->mem.mem_type = TTM_PL_SYSTEM;
 bo->mem.num_pages = bo->num_pages;
 bo->mem.mm_node = ((void*)0);
 bo->mem.page_alignment = page_alignment;
 bo->mem.bus.io_reserved_vm = 0;
 bo->mem.bus.io_reserved_count = 0;
 bo->moving = ((void*)0);
 bo->mem.placement = (TTM_PL_FLAG_SYSTEM | TTM_PL_FLAG_CACHED);
 bo->acc_size = acc_size;
 bo->sg = sg;
 if (resv) {
  bo->base.resv = resv;
  dma_resv_assert_held(bo->base.resv);
 } else {
  bo->base.resv = &bo->base._resv;
 }
 if (!ttm_bo_uses_embedded_gem_object(bo)) {




  dma_resv_init(&bo->base._resv);
  drm_vma_node_reset(&bo->base.vma_node);
 }
 atomic_inc(&bo->bdev->glob->bo_count);





 if (bo->type == ttm_bo_type_device ||
     bo->type == ttm_bo_type_sg)
  ret = drm_vma_offset_add(&bdev->vma_manager, &bo->base.vma_node,
      bo->mem.num_pages);




 if (!resv) {
  locked = dma_resv_trylock(bo->base.resv);
  WARN_ON(!locked);
 }

 if (likely(!ret))
  ret = ttm_bo_validate(bo, placement, ctx);

 if (unlikely(ret)) {
  if (!resv)
   ttm_bo_unreserve(bo);

  ttm_bo_put(bo);
  return ret;
 }

 if (resv && !(bo->mem.placement & TTM_PL_FLAG_NO_EVICT)) {
  spin_lock(&bdev->glob->lru_lock);
  ttm_bo_add_to_lru(bo);
  spin_unlock(&bdev->glob->lru_lock);
 }

 return ret;
}
