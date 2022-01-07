
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int * vm_ops; } ;
struct qib_devdata {int pcidev; } ;
struct qib_ctxtdata {unsigned int subctxt_cnt; size_t rcvegrbuf_chunks; size_t rcvegrbuf_size; unsigned int rcvhdrq_size; int * subctxt_rcvegrbuf; int * user_event_mask; int * subctxt_rcvhdr_base; int * subctxt_uregbase; struct qib_devdata* dd; } ;


 int EINVAL ;
 int EPERM ;
 unsigned long PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_MAYWRITE ;
 int VM_WRITE ;
 scalar_t__ cvt_kvaddr (int *) ;
 int qib_devinfo (int ,char*,int) ;
 int qib_file_vm_ops ;

__attribute__((used)) static int mmap_kvaddr(struct vm_area_struct *vma, u64 pgaddr,
         struct qib_ctxtdata *rcd, unsigned subctxt)
{
 struct qib_devdata *dd = rcd->dd;
 unsigned subctxt_cnt;
 unsigned long len;
 void *addr;
 size_t size;
 int ret = 0;

 subctxt_cnt = rcd->subctxt_cnt;
 size = rcd->rcvegrbuf_chunks * rcd->rcvegrbuf_size;






 if (pgaddr == cvt_kvaddr(rcd->subctxt_uregbase)) {
  addr = rcd->subctxt_uregbase;
  size = PAGE_SIZE * subctxt_cnt;
 } else if (pgaddr == cvt_kvaddr(rcd->subctxt_rcvhdr_base)) {
  addr = rcd->subctxt_rcvhdr_base;
  size = rcd->rcvhdrq_size * subctxt_cnt;
 } else if (pgaddr == cvt_kvaddr(rcd->subctxt_rcvegrbuf)) {
  addr = rcd->subctxt_rcvegrbuf;
  size *= subctxt_cnt;
 } else if (pgaddr == cvt_kvaddr(rcd->subctxt_uregbase +
     PAGE_SIZE * subctxt)) {
  addr = rcd->subctxt_uregbase + PAGE_SIZE * subctxt;
  size = PAGE_SIZE;
 } else if (pgaddr == cvt_kvaddr(rcd->subctxt_rcvhdr_base +
     rcd->rcvhdrq_size * subctxt)) {
  addr = rcd->subctxt_rcvhdr_base +
   rcd->rcvhdrq_size * subctxt;
  size = rcd->rcvhdrq_size;
 } else if (pgaddr == cvt_kvaddr(&rcd->user_event_mask[subctxt])) {
  addr = rcd->user_event_mask;
  size = PAGE_SIZE;
 } else if (pgaddr == cvt_kvaddr(rcd->subctxt_rcvegrbuf +
     size * subctxt)) {
  addr = rcd->subctxt_rcvegrbuf + size * subctxt;

  if (vma->vm_flags & VM_WRITE) {
   qib_devinfo(dd->pcidev,
     "Can't map eager buffers as writable (flags=%lx)\n",
     vma->vm_flags);
   ret = -EPERM;
   goto bail;
  }




  vma->vm_flags &= ~VM_MAYWRITE;
 } else
  goto bail;
 len = vma->vm_end - vma->vm_start;
 if (len > size) {
  ret = -EINVAL;
  goto bail;
 }

 vma->vm_pgoff = (unsigned long) addr >> PAGE_SHIFT;
 vma->vm_ops = &qib_file_vm_ops;
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 ret = 1;

bail:
 return ret;
}
