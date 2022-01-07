
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {void* dma_sgt; } ;



__attribute__((used)) static void *vb2_dma_sg_cookie(void *buf_priv)
{
 struct vb2_dma_sg_buf *buf = buf_priv;

 return buf->dma_sgt;
}
