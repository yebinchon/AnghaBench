
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttm_tt {int num_pages; TYPE_2__* sg; int pages; int bdev; } ;
struct TYPE_5__ {int dma_address; } ;
struct amdgpu_ttm_tt {int userflags; TYPE_1__ ttm; } ;
struct amdgpu_device {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {unsigned int nents; int sgl; } ;


 int AMDGPU_GEM_USERPTR_READONLY ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 unsigned int dma_map_sg (int ,int ,unsigned int,int) ;
 int drm_prime_sg_to_page_addr_arrays (TYPE_2__*,int ,int ,int) ;
 int kfree (TYPE_2__*) ;
 int sg_alloc_table_from_pages (TYPE_2__*,int ,int,int ,int,int ) ;

__attribute__((used)) static int amdgpu_ttm_tt_pin_userptr(struct ttm_tt *ttm)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(ttm->bdev);
 struct amdgpu_ttm_tt *gtt = (void *)ttm;
 unsigned nents;
 int r;

 int write = !(gtt->userflags & AMDGPU_GEM_USERPTR_READONLY);
 enum dma_data_direction direction = write ?
  DMA_BIDIRECTIONAL : DMA_TO_DEVICE;


 r = sg_alloc_table_from_pages(ttm->sg, ttm->pages, ttm->num_pages, 0,
          ttm->num_pages << PAGE_SHIFT,
          GFP_KERNEL);
 if (r)
  goto release_sg;


 r = -ENOMEM;
 nents = dma_map_sg(adev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
 if (nents != ttm->sg->nents)
  goto release_sg;


 drm_prime_sg_to_page_addr_arrays(ttm->sg, ttm->pages,
      gtt->ttm.dma_address, ttm->num_pages);

 return 0;

release_sg:
 kfree(ttm->sg);
 return r;
}
