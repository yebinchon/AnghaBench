
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {int dma_sgt; int * vaddr; int dma_dir; int db_attach; } ;
struct sg_table {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 scalar_t__ WARN_ON (int) ;
 struct sg_table* dma_buf_map_attachment (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int vb2_dma_sg_map_dmabuf(void *mem_priv)
{
 struct vb2_dma_sg_buf *buf = mem_priv;
 struct sg_table *sgt;

 if (WARN_ON(!buf->db_attach)) {
  pr_err("trying to pin a non attached buffer\n");
  return -EINVAL;
 }

 if (WARN_ON(buf->dma_sgt)) {
  pr_err("dmabuf buffer is already pinned\n");
  return 0;
 }


 sgt = dma_buf_map_attachment(buf->db_attach, buf->dma_dir);
 if (IS_ERR(sgt)) {
  pr_err("Error getting dmabuf scatterlist\n");
  return -EINVAL;
 }

 buf->dma_sgt = sgt;
 buf->vaddr = ((void*)0);

 return 0;
}
