
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; int vm_page_prot; } ;
struct TYPE_2__ {unsigned long smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; } ;


 int EAGAIN ;
 int EINVAL ;
 int PAGE_SHARED ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int pgprot_decrypted (int ) ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 unsigned long vmalloc_to_pfn (void*) ;

__attribute__((used)) static int udl_fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end - vma->vm_start;
 unsigned long offset;
 unsigned long page, pos;

 if (vma->vm_pgoff > (~0UL >> PAGE_SHIFT))
  return -EINVAL;

 offset = vma->vm_pgoff << PAGE_SHIFT;

 if (offset > info->fix.smem_len || size > info->fix.smem_len - offset)
  return -EINVAL;

 pos = (unsigned long)info->fix.smem_start + offset;

 pr_debug("mmap() framebuffer addr:%lu size:%lu\n",
    pos, size);


 vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);

 while (size > 0) {
  page = vmalloc_to_pfn((void *)pos);
  if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED))
   return -EAGAIN;

  start += PAGE_SIZE;
  pos += PAGE_SIZE;
  if (size > PAGE_SIZE)
   size -= PAGE_SIZE;
  else
   size = 0;
 }


 return 0;
}
