
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {int * sed_hw_pool; } ;
struct ioat_sed_ent {unsigned int hw_pool; int hw; int dma; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int __GFP_ZERO ;
 int dma_pool_alloc (int ,int,int *) ;
 int ioat_sed_cache ;
 struct ioat_sed_ent* kmem_cache_alloc (int ,int) ;
 int kmem_cache_free (int ,struct ioat_sed_ent*) ;

__attribute__((used)) static struct ioat_sed_ent *
ioat3_alloc_sed(struct ioatdma_device *ioat_dma, unsigned int hw_pool)
{
 struct ioat_sed_ent *sed;
 gfp_t flags = __GFP_ZERO | GFP_ATOMIC;

 sed = kmem_cache_alloc(ioat_sed_cache, flags);
 if (!sed)
  return ((void*)0);

 sed->hw_pool = hw_pool;
 sed->hw = dma_pool_alloc(ioat_dma->sed_hw_pool[hw_pool],
     flags, &sed->dma);
 if (!sed->hw) {
  kmem_cache_free(ioat_sed_cache, sed);
  return ((void*)0);
 }

 return sed;
}
