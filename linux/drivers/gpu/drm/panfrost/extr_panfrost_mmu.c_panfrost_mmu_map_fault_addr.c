
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct sg_table {int nents; int sgl; } ;
struct TYPE_10__ {int size; TYPE_2__* filp; } ;
struct TYPE_9__ {int pages_use_count; TYPE_5__ base; int pages_lock; struct page** pages; } ;
struct TYPE_6__ {int start; } ;
struct panfrost_gem_object {int is_mapped; TYPE_4__ base; TYPE_3__* mmu; struct sg_table* sgts; TYPE_1__ node; int is_heap; } ;
struct panfrost_device {int dev; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_8__ {int as; } ;
struct TYPE_7__ {struct address_space* f_mapping; } ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOMMU_NOEXEC ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 scalar_t__ IS_ERR (struct page*) ;
 int NUM_FAULT_PAGES ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int SZ_2M ;
 int WARN_ON (int) ;
 int __GFP_ZERO ;
 struct panfrost_gem_object* addr_to_drm_mm_node (struct panfrost_device*,int,int) ;
 int dev_WARN (int ,char*,int) ;
 int dev_dbg (int ,char*,int,int) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int drm_gem_object_put_unlocked (TYPE_5__*) ;
 int drm_gem_shmem_put_pages (TYPE_4__*) ;
 int kfree (struct sg_table*) ;
 void* kvmalloc_array (int,int,int) ;
 int mapping_set_unevictable (struct address_space*) ;
 int mmu_map_sg (struct panfrost_device*,TYPE_3__*,int,int,struct sg_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sg_alloc_table_from_pages (struct sg_table*,struct page**,int,int ,int,int) ;
 int sg_free_table (struct sg_table*) ;
 struct page* shmem_read_mapping_page (struct address_space*,int) ;

__attribute__((used)) static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
           u64 addr)
{
 int ret, i;
 struct panfrost_gem_object *bo;
 struct address_space *mapping;
 pgoff_t page_offset;
 struct sg_table *sgt;
 struct page **pages;

 bo = addr_to_drm_mm_node(pfdev, as, addr);
 if (!bo)
  return -ENOENT;

 if (!bo->is_heap) {
  dev_WARN(pfdev->dev, "matching BO is not heap type (GPU VA = %llx)",
    bo->node.start << PAGE_SHIFT);
  ret = -EINVAL;
  goto err_bo;
 }
 WARN_ON(bo->mmu->as != as);


 addr &= ~((u64)SZ_2M - 1);
 page_offset = addr >> PAGE_SHIFT;
 page_offset -= bo->node.start;

 mutex_lock(&bo->base.pages_lock);

 if (!bo->base.pages) {
  bo->sgts = kvmalloc_array(bo->base.base.size / SZ_2M,
         sizeof(struct sg_table), GFP_KERNEL | __GFP_ZERO);
  if (!bo->sgts) {
   mutex_unlock(&bo->base.pages_lock);
   ret = -ENOMEM;
   goto err_bo;
  }

  pages = kvmalloc_array(bo->base.base.size >> PAGE_SHIFT,
           sizeof(struct page *), GFP_KERNEL | __GFP_ZERO);
  if (!pages) {
   kfree(bo->sgts);
   bo->sgts = ((void*)0);
   mutex_unlock(&bo->base.pages_lock);
   ret = -ENOMEM;
   goto err_bo;
  }
  bo->base.pages = pages;
  bo->base.pages_use_count = 1;
 } else
  pages = bo->base.pages;

 mapping = bo->base.base.filp->f_mapping;
 mapping_set_unevictable(mapping);

 for (i = page_offset; i < page_offset + NUM_FAULT_PAGES; i++) {
  pages[i] = shmem_read_mapping_page(mapping, i);
  if (IS_ERR(pages[i])) {
   mutex_unlock(&bo->base.pages_lock);
   ret = PTR_ERR(pages[i]);
   goto err_pages;
  }
 }

 mutex_unlock(&bo->base.pages_lock);

 sgt = &bo->sgts[page_offset / (SZ_2M / PAGE_SIZE)];
 ret = sg_alloc_table_from_pages(sgt, pages + page_offset,
     NUM_FAULT_PAGES, 0, SZ_2M, GFP_KERNEL);
 if (ret)
  goto err_pages;

 if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
  ret = -EINVAL;
  goto err_map;
 }

 mmu_map_sg(pfdev, bo->mmu, addr, IOMMU_WRITE | IOMMU_READ | IOMMU_NOEXEC, sgt);

 bo->is_mapped = 1;

 dev_dbg(pfdev->dev, "mapped page fault @ AS%d %llx", as, addr);

 drm_gem_object_put_unlocked(&bo->base.base);

 return 0;

err_map:
 sg_free_table(sgt);
err_pages:
 drm_gem_shmem_put_pages(&bo->base);
err_bo:
 drm_gem_object_put_unlocked(&bo->base.base);
 return ret;
}
