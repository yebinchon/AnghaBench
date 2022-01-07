
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {void* vaddr; } ;


 int pr_err (char*) ;

__attribute__((used)) static void *vb2_vmalloc_vaddr(void *buf_priv)
{
 struct vb2_vmalloc_buf *buf = buf_priv;

 if (!buf->vaddr) {
  pr_err("Address of an unallocated plane requested or cannot map user pointer\n");
  return ((void*)0);
 }

 return buf->vaddr;
}
