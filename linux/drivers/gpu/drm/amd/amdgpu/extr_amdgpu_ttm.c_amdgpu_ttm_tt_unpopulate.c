
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int page_flags; int bdev; int sg; } ;
struct amdgpu_ttm_tt {int ttm; scalar_t__ userptr; } ;
struct amdgpu_device {int dev; scalar_t__ need_swiotlb; } ;


 int TTM_PAGE_FLAG_SG ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_ttm_tt_set_user_pages (struct ttm_tt*,int *) ;
 int kfree (int ) ;
 scalar_t__ swiotlb_nr_tbl () ;
 int ttm_dma_unpopulate (int *,int ) ;
 int ttm_unmap_and_unpopulate_pages (int ,int *) ;

__attribute__((used)) static void amdgpu_ttm_tt_unpopulate(struct ttm_tt *ttm)
{
 struct amdgpu_device *adev;
 struct amdgpu_ttm_tt *gtt = (void *)ttm;
 bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

 if (gtt && gtt->userptr) {
  amdgpu_ttm_tt_set_user_pages(ttm, ((void*)0));
  kfree(ttm->sg);
  ttm->page_flags &= ~TTM_PAGE_FLAG_SG;
  return;
 }

 if (slave)
  return;

 adev = amdgpu_ttm_adev(ttm->bdev);
 ttm_unmap_and_unpopulate_pages(adev->dev, &gtt->ttm);
}
