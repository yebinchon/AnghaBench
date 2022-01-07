
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {int dma_dir; int dev; scalar_t__ db_attach; struct sg_table* dma_sgt; } ;
struct sg_table {int orig_nents; int sgl; } ;


 int dma_sync_sg_for_device (int ,int ,int ,int ) ;

__attribute__((used)) static void vb2_dma_sg_prepare(void *buf_priv)
{
 struct vb2_dma_sg_buf *buf = buf_priv;
 struct sg_table *sgt = buf->dma_sgt;


 if (buf->db_attach)
  return;

 dma_sync_sg_for_device(buf->dev, sgt->sgl, sgt->orig_nents,
          buf->dma_dir);
}
