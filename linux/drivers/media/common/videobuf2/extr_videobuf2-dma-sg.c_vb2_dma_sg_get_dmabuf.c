
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_dma_sg_buf {int refcount; int dma_sgt; int size; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {unsigned long flags; struct vb2_dma_sg_buf* priv; int size; int * ops; } ;


 int DEFINE_DMA_BUF_EXPORT_INFO (TYPE_1__) ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 scalar_t__ WARN_ON (int) ;
 struct dma_buf* dma_buf_export (TYPE_1__*) ;
 TYPE_1__ exp_info ;
 int refcount_inc (int *) ;
 int vb2_dma_sg_dmabuf_ops ;

__attribute__((used)) static struct dma_buf *vb2_dma_sg_get_dmabuf(void *buf_priv, unsigned long flags)
{
 struct vb2_dma_sg_buf *buf = buf_priv;
 struct dma_buf *dbuf;
 DEFINE_DMA_BUF_EXPORT_INFO(exp_info);

 exp_info.ops = &vb2_dma_sg_dmabuf_ops;
 exp_info.size = buf->size;
 exp_info.flags = flags;
 exp_info.priv = buf;

 if (WARN_ON(!buf->dma_sgt))
  return ((void*)0);

 dbuf = dma_buf_export(&exp_info);
 if (IS_ERR(dbuf))
  return ((void*)0);


 refcount_inc(&buf->refcount);

 return dbuf;
}
