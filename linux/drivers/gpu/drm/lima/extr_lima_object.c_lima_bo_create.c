
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sg_table {int dummy; } ;
struct lima_device {int dev; } ;
struct TYPE_4__ {size_t size; TYPE_1__* filp; } ;
struct lima_bo {int * pages_dma_addr; struct lima_bo* pages; TYPE_2__ gem; struct sg_table* sgt; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int f_mapping; } ;


 int DMA_BIDIRECTIONAL ;
 int EFAULT ;
 int ENOMEM ;
 struct lima_bo* ERR_CAST (struct lima_bo*) ;
 struct lima_bo* ERR_PTR (int) ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lima_bo*) ;
 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dma_map_page (int ,struct lima_bo,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 struct lima_bo* drm_gem_get_pages (TYPE_2__*) ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,struct lima_bo*,int *,size_t) ;
 void* kcalloc (size_t,int,int ) ;
 struct lima_bo* lima_bo_create_struct (struct lima_device*,int ,int ) ;
 int lima_bo_destroy (struct lima_bo*) ;
 int mapping_set_gfp_mask (int ,int ) ;

struct lima_bo *lima_bo_create(struct lima_device *dev, u32 size,
          u32 flags, struct sg_table *sgt)
{
 int i, err;
 size_t npages;
 struct lima_bo *bo, *ret;

 bo = lima_bo_create_struct(dev, size, flags);
 if (IS_ERR(bo))
  return bo;

 npages = bo->gem.size >> PAGE_SHIFT;

 bo->pages_dma_addr = kcalloc(npages, sizeof(dma_addr_t), GFP_KERNEL);
 if (!bo->pages_dma_addr) {
  ret = ERR_PTR(-ENOMEM);
  goto err_out;
 }

 if (sgt) {
  bo->sgt = sgt;

  bo->pages = kcalloc(npages, sizeof(*bo->pages), GFP_KERNEL);
  if (!bo->pages) {
   ret = ERR_PTR(-ENOMEM);
   goto err_out;
  }

  err = drm_prime_sg_to_page_addr_arrays(
   sgt, bo->pages, bo->pages_dma_addr, npages);
  if (err) {
   ret = ERR_PTR(err);
   goto err_out;
  }
 } else {
  mapping_set_gfp_mask(bo->gem.filp->f_mapping, GFP_DMA32);
  bo->pages = drm_gem_get_pages(&bo->gem);
  if (IS_ERR(bo->pages)) {
   ret = ERR_CAST(bo->pages);
   bo->pages = ((void*)0);
   goto err_out;
  }

  for (i = 0; i < npages; i++) {
   dma_addr_t addr = dma_map_page(dev->dev, bo->pages[i], 0,
             PAGE_SIZE, DMA_BIDIRECTIONAL);
   if (dma_mapping_error(dev->dev, addr)) {
    ret = ERR_PTR(-EFAULT);
    goto err_out;
   }
   bo->pages_dma_addr[i] = addr;
  }

 }

 return bo;

err_out:
 lima_bo_destroy(bo);
 return ret;
}
