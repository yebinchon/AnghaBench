
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {int page_flags; void* state; int num_pages; int pages; scalar_t__ sg; int bdev; } ;
struct ttm_operation_ctx {int dummy; } ;
struct sg_table {int dummy; } ;
struct TYPE_3__ {int dma_address; } ;
struct amdgpu_ttm_tt {TYPE_1__ ttm; scalar_t__ userptr; } ;
struct amdgpu_device {int dev; scalar_t__ need_swiotlb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TTM_PAGE_FLAG_SG ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int drm_prime_sg_to_page_addr_arrays (scalar_t__,int ,int ,int ) ;
 scalar_t__ kzalloc (int,int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 void* tt_unbound ;
 int ttm_dma_populate (TYPE_1__*,int ,struct ttm_operation_ctx*) ;
 int ttm_populate_and_map_pages (int ,TYPE_1__*,struct ttm_operation_ctx*) ;

__attribute__((used)) static int amdgpu_ttm_tt_populate(struct ttm_tt *ttm,
   struct ttm_operation_ctx *ctx)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(ttm->bdev);
 struct amdgpu_ttm_tt *gtt = (void *)ttm;
 bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);


 if (gtt && gtt->userptr) {
  ttm->sg = kzalloc(sizeof(struct sg_table), GFP_KERNEL);
  if (!ttm->sg)
   return -ENOMEM;

  ttm->page_flags |= TTM_PAGE_FLAG_SG;
  ttm->state = tt_unbound;
  return 0;
 }

 if (slave && ttm->sg) {
  drm_prime_sg_to_page_addr_arrays(ttm->sg, ttm->pages,
       gtt->ttm.dma_address,
       ttm->num_pages);
  ttm->state = tt_unbound;
  return 0;
 }
 return ttm_populate_and_map_pages(adev->dev, &gtt->ttm, ctx);
}
