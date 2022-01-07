
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dc_buf {int dma_sgt; unsigned long size; int * vaddr; int dma_addr; int dma_dir; int db_attach; } ;
struct sg_table {int sgl; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 scalar_t__ WARN_ON (int) ;
 struct sg_table* dma_buf_map_attachment (int ,int ) ;
 int dma_buf_unmap_attachment (int ,struct sg_table*,int ) ;
 int pr_err (char*,...) ;
 int sg_dma_address (int ) ;
 unsigned long vb2_dc_get_contiguous_size (struct sg_table*) ;

__attribute__((used)) static int vb2_dc_map_dmabuf(void *mem_priv)
{
 struct vb2_dc_buf *buf = mem_priv;
 struct sg_table *sgt;
 unsigned long contig_size;

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


 contig_size = vb2_dc_get_contiguous_size(sgt);
 if (contig_size < buf->size) {
  pr_err("contiguous chunk is too small %lu/%lu b\n",
   contig_size, buf->size);
  dma_buf_unmap_attachment(buf->db_attach, sgt, buf->dma_dir);
  return -EFAULT;
 }

 buf->dma_addr = sg_dma_address(sgt->sgl);
 buf->dma_sgt = sgt;
 buf->vaddr = ((void*)0);

 return 0;
}
