
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vmw_diff_cpy {scalar_t__ line_offset; scalar_t__ line; } ;
struct vmw_bo_blit_line_data {void* dst_prot; int * dst_addr; void* src_prot; int * src_addr; struct vmw_diff_cpy* diff; int src_num_pages; int dst_num_pages; int src_pages; int dst_pages; scalar_t__ mapped_src; scalar_t__ mapped_dst; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_10__ {int placement; } ;
struct TYPE_7__ {int resv; } ;
struct ttm_buffer_object {TYPE_4__ mem; int num_pages; TYPE_5__* ttm; TYPE_1__ base; } ;
struct TYPE_11__ {scalar_t__ state; int pages; TYPE_3__* bdev; } ;
struct TYPE_9__ {TYPE_2__* driver; } ;
struct TYPE_8__ {int (* ttm_tt_populate ) (TYPE_5__*,struct ttm_operation_ctx*) ;} ;


 int PAGE_KERNEL ;
 int TTM_PL_FLAG_NO_EVICT ;
 int dma_resv_assert_held (int ) ;
 int stub1 (TYPE_5__*,struct ttm_operation_ctx*) ;
 int stub2 (TYPE_5__*,struct ttm_operation_ctx*) ;
 scalar_t__ tt_unpopulated ;
 void* ttm_io_prot (int,int ) ;
 int ttm_kunmap_atomic_prot (int *,void*) ;
 int vmw_bo_cpu_blit_line (struct vmw_bo_blit_line_data*,scalar_t__,scalar_t__,scalar_t__) ;

int vmw_bo_cpu_blit(struct ttm_buffer_object *dst,
      u32 dst_offset, u32 dst_stride,
      struct ttm_buffer_object *src,
      u32 src_offset, u32 src_stride,
      u32 w, u32 h,
      struct vmw_diff_cpy *diff)
{
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 u32 j, initial_line = dst_offset / dst_stride;
 struct vmw_bo_blit_line_data d;
 int ret = 0;


 if (!(dst->mem.placement & TTM_PL_FLAG_NO_EVICT))
  dma_resv_assert_held(dst->base.resv);
 if (!(src->mem.placement & TTM_PL_FLAG_NO_EVICT))
  dma_resv_assert_held(src->base.resv);

 if (dst->ttm->state == tt_unpopulated) {
  ret = dst->ttm->bdev->driver->ttm_tt_populate(dst->ttm, &ctx);
  if (ret)
   return ret;
 }

 if (src->ttm->state == tt_unpopulated) {
  ret = src->ttm->bdev->driver->ttm_tt_populate(src->ttm, &ctx);
  if (ret)
   return ret;
 }

 d.mapped_dst = 0;
 d.mapped_src = 0;
 d.dst_addr = ((void*)0);
 d.src_addr = ((void*)0);
 d.dst_pages = dst->ttm->pages;
 d.src_pages = src->ttm->pages;
 d.dst_num_pages = dst->num_pages;
 d.src_num_pages = src->num_pages;
 d.dst_prot = ttm_io_prot(dst->mem.placement, PAGE_KERNEL);
 d.src_prot = ttm_io_prot(src->mem.placement, PAGE_KERNEL);
 d.diff = diff;

 for (j = 0; j < h; ++j) {
  diff->line = j + initial_line;
  diff->line_offset = dst_offset % dst_stride;
  ret = vmw_bo_cpu_blit_line(&d, dst_offset, src_offset, w);
  if (ret)
   goto out;

  dst_offset += dst_stride;
  src_offset += src_stride;
 }
out:
 if (d.src_addr)
  ttm_kunmap_atomic_prot(d.src_addr, d.src_prot);
 if (d.dst_addr)
  ttm_kunmap_atomic_prot(d.dst_addr, d.dst_prot);

 return ret;
}
