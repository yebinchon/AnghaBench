
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dc_buf {int dev; int attrs; int dma_addr; int cookie; int size; struct vb2_dc_buf* sgt_base; int refcount; } ;


 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int kfree (struct vb2_dc_buf*) ;
 int put_device (int ) ;
 int refcount_dec_and_test (int *) ;
 int sg_free_table (struct vb2_dc_buf*) ;

__attribute__((used)) static void vb2_dc_put(void *buf_priv)
{
 struct vb2_dc_buf *buf = buf_priv;

 if (!refcount_dec_and_test(&buf->refcount))
  return;

 if (buf->sgt_base) {
  sg_free_table(buf->sgt_base);
  kfree(buf->sgt_base);
 }
 dma_free_attrs(buf->dev, buf->size, buf->cookie, buf->dma_addr,
         buf->attrs);
 put_device(buf->dev);
 kfree(buf);
}
