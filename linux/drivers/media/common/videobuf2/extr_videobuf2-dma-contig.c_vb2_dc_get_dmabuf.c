
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_dc_buf {int refcount; scalar_t__ sgt_base; int size; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {unsigned long flags; struct vb2_dc_buf* priv; int size; int * ops; } ;


 int DEFINE_DMA_BUF_EXPORT_INFO (TYPE_1__) ;
 scalar_t__ IS_ERR (struct dma_buf*) ;
 scalar_t__ WARN_ON (int) ;
 struct dma_buf* dma_buf_export (TYPE_1__*) ;
 TYPE_1__ exp_info ;
 int refcount_inc (int *) ;
 int vb2_dc_dmabuf_ops ;
 scalar_t__ vb2_dc_get_base_sgt (struct vb2_dc_buf*) ;

__attribute__((used)) static struct dma_buf *vb2_dc_get_dmabuf(void *buf_priv, unsigned long flags)
{
 struct vb2_dc_buf *buf = buf_priv;
 struct dma_buf *dbuf;
 DEFINE_DMA_BUF_EXPORT_INFO(exp_info);

 exp_info.ops = &vb2_dc_dmabuf_ops;
 exp_info.size = buf->size;
 exp_info.flags = flags;
 exp_info.priv = buf;

 if (!buf->sgt_base)
  buf->sgt_base = vb2_dc_get_base_sgt(buf);

 if (WARN_ON(!buf->sgt_base))
  return ((void*)0);

 dbuf = dma_buf_export(&exp_info);
 if (IS_ERR(dbuf))
  return ((void*)0);


 refcount_inc(&buf->refcount);

 return dbuf;
}
