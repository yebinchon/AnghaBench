
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct udmabuf* vm_private_data; int * vm_ops; } ;
struct udmabuf {int dummy; } ;
struct dma_buf {struct udmabuf* priv; } ;


 int EINVAL ;
 int VM_MAYSHARE ;
 int VM_SHARED ;
 int udmabuf_vm_ops ;

__attribute__((used)) static int mmap_udmabuf(struct dma_buf *buf, struct vm_area_struct *vma)
{
 struct udmabuf *ubuf = buf->priv;

 if ((vma->vm_flags & (VM_SHARED | VM_MAYSHARE)) == 0)
  return -EINVAL;

 vma->vm_ops = &udmabuf_vm_ops;
 vma->vm_private_data = ubuf;
 return 0;
}
