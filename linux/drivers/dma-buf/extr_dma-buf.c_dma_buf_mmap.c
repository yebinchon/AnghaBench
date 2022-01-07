
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; struct file* vm_file; } ;
struct file {int dummy; } ;
struct dma_buf {unsigned long size; struct file* file; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mmap ) (struct dma_buf*,struct vm_area_struct*) ;} ;


 int EINVAL ;
 int EOVERFLOW ;
 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 int stub1 (struct dma_buf*,struct vm_area_struct*) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

int dma_buf_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma,
   unsigned long pgoff)
{
 struct file *oldfile;
 int ret;

 if (WARN_ON(!dmabuf || !vma))
  return -EINVAL;


 if (!dmabuf->ops->mmap)
  return -EINVAL;


 if (pgoff + vma_pages(vma) < pgoff)
  return -EOVERFLOW;


 if (pgoff + vma_pages(vma) >
     dmabuf->size >> PAGE_SHIFT)
  return -EINVAL;


 get_file(dmabuf->file);
 oldfile = vma->vm_file;
 vma->vm_file = dmabuf->file;
 vma->vm_pgoff = pgoff;

 ret = dmabuf->ops->mmap(dmabuf, vma);
 if (ret) {

  vma->vm_file = oldfile;
  fput(dmabuf->file);
 } else {
  if (oldfile)
   fput(oldfile);
 }
 return ret;

}
