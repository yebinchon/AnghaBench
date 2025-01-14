
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct vm_area_struct {unsigned long vm_end; scalar_t__ vm_file; } ;
struct ttm_tt {unsigned int num_pages; struct page** pages; TYPE_2__* sg; int bdev; } ;
struct TYPE_6__ {int dma_address; } ;
struct radeon_ttm_tt {int userflags; scalar_t__ usermm; unsigned int userptr; TYPE_1__ ttm; } ;
struct radeon_device {int dev; } ;
struct page {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {scalar_t__ mm; } ;
struct TYPE_7__ {unsigned int nents; int sgl; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int EPERM ;
 int FOLL_WRITE ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int RADEON_GEM_USERPTR_ANONONLY ;
 int RADEON_GEM_USERPTR_READONLY ;
 TYPE_5__* current ;
 unsigned int dma_map_sg (int ,int ,unsigned int,int) ;
 int drm_prime_sg_to_page_addr_arrays (TYPE_2__*,struct page**,int ,int) ;
 struct vm_area_struct* find_vma (scalar_t__,unsigned int) ;
 int get_user_pages (unsigned int,unsigned int,int ,struct page**,int *) ;
 int kfree (TYPE_2__*) ;
 struct radeon_device* radeon_get_rdev (int ) ;
 int release_pages (struct page**,unsigned int) ;
 int sg_alloc_table_from_pages (TYPE_2__*,struct page**,unsigned int,int ,int,int ) ;

__attribute__((used)) static int radeon_ttm_tt_pin_userptr(struct ttm_tt *ttm)
{
 struct radeon_device *rdev = radeon_get_rdev(ttm->bdev);
 struct radeon_ttm_tt *gtt = (void *)ttm;
 unsigned pinned = 0, nents;
 int r;

 int write = !(gtt->userflags & RADEON_GEM_USERPTR_READONLY);
 enum dma_data_direction direction = write ?
  DMA_BIDIRECTIONAL : DMA_TO_DEVICE;

 if (current->mm != gtt->usermm)
  return -EPERM;

 if (gtt->userflags & RADEON_GEM_USERPTR_ANONONLY) {


  unsigned long end = gtt->userptr + ttm->num_pages * PAGE_SIZE;
  struct vm_area_struct *vma;
  vma = find_vma(gtt->usermm, gtt->userptr);
  if (!vma || vma->vm_file || vma->vm_end < end)
   return -EPERM;
 }

 do {
  unsigned num_pages = ttm->num_pages - pinned;
  uint64_t userptr = gtt->userptr + pinned * PAGE_SIZE;
  struct page **pages = ttm->pages + pinned;

  r = get_user_pages(userptr, num_pages, write ? FOLL_WRITE : 0,
       pages, ((void*)0));
  if (r < 0)
   goto release_pages;

  pinned += r;

 } while (pinned < ttm->num_pages);

 r = sg_alloc_table_from_pages(ttm->sg, ttm->pages, ttm->num_pages, 0,
          ttm->num_pages << PAGE_SHIFT,
          GFP_KERNEL);
 if (r)
  goto release_sg;

 r = -ENOMEM;
 nents = dma_map_sg(rdev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
 if (nents != ttm->sg->nents)
  goto release_sg;

 drm_prime_sg_to_page_addr_arrays(ttm->sg, ttm->pages,
      gtt->ttm.dma_address, ttm->num_pages);

 return 0;

release_sg:
 kfree(ttm->sg);

release_pages:
 release_pages(ttm->pages, pinned);
 return r;
}
