
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vm_area_struct {int vm_end; int vm_start; int vm_pgoff; int vm_flags; } ;
struct ib_ucontext {int device; } ;
struct efa_ucontext {int dummy; } ;
struct efa_dev {int ibdev; } ;


 int EINVAL ;
 int EPERM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_EXEC ;
 int VM_SHARED ;
 int __efa_mmap (struct efa_dev*,struct efa_ucontext*,struct vm_area_struct*,int,int) ;
 int ibdev_dbg (int *,char*,...) ;
 struct efa_dev* to_edev (int ) ;
 struct efa_ucontext* to_eucontext (struct ib_ucontext*) ;

int efa_mmap(struct ib_ucontext *ibucontext,
      struct vm_area_struct *vma)
{
 struct efa_ucontext *ucontext = to_eucontext(ibucontext);
 struct efa_dev *dev = to_edev(ibucontext->device);
 u64 length = vma->vm_end - vma->vm_start;
 u64 key = vma->vm_pgoff << PAGE_SHIFT;

 ibdev_dbg(&dev->ibdev,
    "start %#lx, end %#lx, length = %#llx, key = %#llx\n",
    vma->vm_start, vma->vm_end, length, key);

 if (length % PAGE_SIZE != 0 || !(vma->vm_flags & VM_SHARED)) {
  ibdev_dbg(&dev->ibdev,
     "length[%#llx] is not page size aligned[%#lx] or VM_SHARED is not set [%#lx]\n",
     length, PAGE_SIZE, vma->vm_flags);
  return -EINVAL;
 }

 if (vma->vm_flags & VM_EXEC) {
  ibdev_dbg(&dev->ibdev, "Mapping executable pages is not permitted\n");
  return -EPERM;
 }

 return __efa_mmap(dev, ucontext, vma, key, length);
}
