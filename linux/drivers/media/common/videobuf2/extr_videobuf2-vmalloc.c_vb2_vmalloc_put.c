
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {int vaddr; int refcount; } ;


 int kfree (struct vb2_vmalloc_buf*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int vfree (int ) ;

__attribute__((used)) static void vb2_vmalloc_put(void *buf_priv)
{
 struct vb2_vmalloc_buf *buf = buf_priv;

 if (refcount_dec_and_test(&buf->refcount)) {
  vfree(buf->vaddr);
  kfree(buf);
 }
}
