
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; struct file* vm_file; } ;
struct file {int dummy; } ;


 scalar_t__ PAGE_ALIGN (unsigned long) ;

__attribute__((used)) static inline bool
__vma_matches(struct vm_area_struct *vma, struct file *filp,
       unsigned long addr, unsigned long size)
{
 if (vma->vm_file != filp)
  return 0;

 return vma->vm_start == addr &&
        (vma->vm_end - vma->vm_start) == PAGE_ALIGN(size);
}
