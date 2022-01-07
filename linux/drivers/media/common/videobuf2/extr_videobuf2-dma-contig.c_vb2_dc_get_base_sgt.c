
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dc_buf {int dev; int attrs; int size; int dma_addr; int cookie; } ;
struct sg_table {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dma_get_sgtable_attrs (int ,struct sg_table*,int ,int ,int ,int ) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;

__attribute__((used)) static struct sg_table *vb2_dc_get_base_sgt(struct vb2_dc_buf *buf)
{
 int ret;
 struct sg_table *sgt;

 sgt = kmalloc(sizeof(*sgt), GFP_KERNEL);
 if (!sgt) {
  dev_err(buf->dev, "failed to alloc sg table\n");
  return ((void*)0);
 }

 ret = dma_get_sgtable_attrs(buf->dev, sgt, buf->cookie, buf->dma_addr,
  buf->size, buf->attrs);
 if (ret < 0) {
  dev_err(buf->dev, "failed to get scatterlist from DMA API\n");
  kfree(sgt);
  return ((void*)0);
 }

 return sgt;
}
