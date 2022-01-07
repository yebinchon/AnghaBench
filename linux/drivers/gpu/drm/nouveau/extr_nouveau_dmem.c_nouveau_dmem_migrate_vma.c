
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct migrate_vma {unsigned long start; unsigned long end; int * src; int * dst; scalar_t__ cpages; struct vm_area_struct* vma; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_SHIFT ;
 int SG_MAX_SINGLE_ALLOC ;
 void* kcalloc (unsigned long,int,int ) ;
 int kfree (int *) ;
 int * kmalloc_array (unsigned long,int,int ) ;
 int migrate_vma_setup (struct migrate_vma*) ;
 unsigned long min (int ,unsigned long) ;
 int nouveau_dmem_migrate_chunk (struct nouveau_drm*,struct migrate_vma*,int *) ;

int
nouveau_dmem_migrate_vma(struct nouveau_drm *drm,
    struct vm_area_struct *vma,
    unsigned long start,
    unsigned long end)
{
 unsigned long npages = (end - start) >> PAGE_SHIFT;
 unsigned long max = min(SG_MAX_SINGLE_ALLOC, npages);
 dma_addr_t *dma_addrs;
 struct migrate_vma args = {
  .vma = vma,
  .start = start,
 };
 unsigned long c, i;
 int ret = -ENOMEM;

 args.src = kcalloc(max, sizeof(args.src), GFP_KERNEL);
 if (!args.src)
  goto out;
 args.dst = kcalloc(max, sizeof(args.dst), GFP_KERNEL);
 if (!args.dst)
  goto out_free_src;

 dma_addrs = kmalloc_array(max, sizeof(*dma_addrs), GFP_KERNEL);
 if (!dma_addrs)
  goto out_free_dst;

 for (i = 0; i < npages; i += c) {
  c = min(SG_MAX_SINGLE_ALLOC, npages);
  args.end = start + (c << PAGE_SHIFT);
  ret = migrate_vma_setup(&args);
  if (ret)
   goto out_free_dma;

  if (args.cpages)
   nouveau_dmem_migrate_chunk(drm, &args, dma_addrs);
  args.start = args.end;
 }

 ret = 0;
out_free_dma:
 kfree(dma_addrs);
out_free_dst:
 kfree(args.dst);
out_free_src:
 kfree(args.src);
out:
 return ret;
}
