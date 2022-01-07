
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_ops; int * vm_private_data; int vm_flags; } ;
struct vb2_vmalloc_buf {int handler; int vaddr; } ;
struct TYPE_2__ {int (* open ) (struct vm_area_struct*) ;} ;


 int EINVAL ;
 int VM_DONTEXPAND ;
 int pr_err (char*,...) ;
 int remap_vmalloc_range (struct vm_area_struct*,int ,int ) ;
 int stub1 (struct vm_area_struct*) ;
 TYPE_1__ vb2_common_vm_ops ;

__attribute__((used)) static int vb2_vmalloc_mmap(void *buf_priv, struct vm_area_struct *vma)
{
 struct vb2_vmalloc_buf *buf = buf_priv;
 int ret;

 if (!buf) {
  pr_err("No memory to map\n");
  return -EINVAL;
 }

 ret = remap_vmalloc_range(vma, buf->vaddr, 0);
 if (ret) {
  pr_err("Remapping vmalloc memory, error: %d\n", ret);
  return ret;
 }




 vma->vm_flags |= VM_DONTEXPAND;




 vma->vm_private_data = &buf->handler;
 vma->vm_ops = &vb2_common_vm_ops;

 vma->vm_ops->open(vma);

 return 0;
}
