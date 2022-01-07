
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {int refcount; } ;


 unsigned int refcount_read (int *) ;

__attribute__((used)) static unsigned int vb2_vmalloc_num_users(void *buf_priv)
{
 struct vb2_vmalloc_buf *buf = buf_priv;
 return refcount_read(&buf->refcount);
}
