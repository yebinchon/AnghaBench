
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {int type; int * ttm; TYPE_2__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_1__* driver; scalar_t__ no_retry; scalar_t__ need_dma32; } ;
struct TYPE_3__ {int * (* ttm_tt_create ) (struct ttm_buffer_object*,int ) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int TTM_PAGE_FLAG_DMA32 ;
 int TTM_PAGE_FLAG_NO_RETRY ;
 int TTM_PAGE_FLAG_SG ;
 int TTM_PAGE_FLAG_ZERO_ALLOC ;
 int dma_resv_assert_held (int ) ;
 int pr_err (char*) ;
 int * stub1 (struct ttm_buffer_object*,int ) ;



 scalar_t__ unlikely (int ) ;

int ttm_tt_create(struct ttm_buffer_object *bo, bool zero_alloc)
{
 struct ttm_bo_device *bdev = bo->bdev;
 uint32_t page_flags = 0;

 dma_resv_assert_held(bo->base.resv);

 if (bdev->need_dma32)
  page_flags |= TTM_PAGE_FLAG_DMA32;

 if (bdev->no_retry)
  page_flags |= TTM_PAGE_FLAG_NO_RETRY;

 switch (bo->type) {
 case 130:
  if (zero_alloc)
   page_flags |= TTM_PAGE_FLAG_ZERO_ALLOC;
  break;
 case 129:
  break;
 case 128:
  page_flags |= TTM_PAGE_FLAG_SG;
  break;
 default:
  bo->ttm = ((void*)0);
  pr_err("Illegal buffer object type\n");
  return -EINVAL;
 }

 bo->ttm = bdev->driver->ttm_tt_create(bo, page_flags);
 if (unlikely(bo->ttm == ((void*)0)))
  return -ENOMEM;

 return 0;
}
