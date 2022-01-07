
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int * vm_ops; int vm_page_prot; scalar_t__ vm_pgoff; TYPE_1__* vm_file; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {scalar_t__ mode; scalar_t__ nr_pages; int user_count; int mmap_count; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct msc_iter* private_data; } ;


 int EINVAL ;
 scalar_t__ MSC_MODE_MULTI ;
 scalar_t__ MSC_MODE_SINGLE ;
 scalar_t__ PAGE_SHIFT ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int atomic_dec (int *) ;
 int atomic_inc_unless_negative (int *) ;
 int atomic_set (int *,int) ;
 int msc_mmap_ops ;
 scalar_t__ offset_in_page (unsigned long) ;
 int pgprot_noncached (int ) ;

__attribute__((used)) static int intel_th_msc_mmap(struct file *file, struct vm_area_struct *vma)
{
 unsigned long size = vma->vm_end - vma->vm_start;
 struct msc_iter *iter = vma->vm_file->private_data;
 struct msc *msc = iter->msc;
 int ret = -EINVAL;

 if (!size || offset_in_page(size))
  return -EINVAL;

 if (vma->vm_pgoff)
  return -EINVAL;


 if (!atomic_inc_unless_negative(&msc->user_count))
  return -EINVAL;

 if (msc->mode != MSC_MODE_SINGLE &&
     msc->mode != MSC_MODE_MULTI)
  goto out;

 if (size >> PAGE_SHIFT != msc->nr_pages)
  goto out;

 atomic_set(&msc->mmap_count, 1);
 ret = 0;

out:
 if (ret)
  atomic_dec(&msc->user_count);

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTCOPY;
 vma->vm_ops = &msc_mmap_ops;
 return ret;
}
