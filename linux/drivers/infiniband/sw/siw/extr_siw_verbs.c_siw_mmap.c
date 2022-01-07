
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; int vm_end; int vm_start; } ;
struct siw_uobj {int addr; } ;
struct siw_ucontext {TYPE_1__* sdev; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_2__ {int base_dev; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int pr_warn (char*,...) ;
 int remap_vmalloc_range (struct vm_area_struct*,int ,int ) ;
 int siw_dbg (int *,char*,unsigned long,int) ;
 struct siw_uobj* siw_get_uobj (struct siw_ucontext*,unsigned long,int) ;
 struct siw_ucontext* to_siw_ctx (struct ib_ucontext*) ;

int siw_mmap(struct ib_ucontext *ctx, struct vm_area_struct *vma)
{
 struct siw_ucontext *uctx = to_siw_ctx(ctx);
 struct siw_uobj *uobj;
 unsigned long off = vma->vm_pgoff;
 int size = vma->vm_end - vma->vm_start;
 int rv = -EINVAL;




 if (vma->vm_start & (PAGE_SIZE - 1)) {
  pr_warn("siw: mmap not page aligned\n");
  goto out;
 }
 uobj = siw_get_uobj(uctx, off, size);
 if (!uobj) {
  siw_dbg(&uctx->sdev->base_dev, "mmap lookup failed: %lu, %u\n",
   off, size);
  goto out;
 }
 rv = remap_vmalloc_range(vma, uobj->addr, 0);
 if (rv)
  pr_warn("remap_vmalloc_range failed: %lu, %u\n", off, size);
out:
 return rv;
}
