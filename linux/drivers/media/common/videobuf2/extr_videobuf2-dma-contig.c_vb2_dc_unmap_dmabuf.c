
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_dc_buf {struct sg_table* dma_sgt; scalar_t__ dma_addr; int dma_dir; TYPE_1__* db_attach; int * vaddr; } ;
struct sg_table {int dummy; } ;
struct TYPE_2__ {int dmabuf; } ;


 scalar_t__ WARN_ON (int) ;
 int dma_buf_unmap_attachment (TYPE_1__*,struct sg_table*,int ) ;
 int dma_buf_vunmap (int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static void vb2_dc_unmap_dmabuf(void *mem_priv)
{
 struct vb2_dc_buf *buf = mem_priv;
 struct sg_table *sgt = buf->dma_sgt;

 if (WARN_ON(!buf->db_attach)) {
  pr_err("trying to unpin a not attached buffer\n");
  return;
 }

 if (WARN_ON(!sgt)) {
  pr_err("dmabuf buffer is already unpinned\n");
  return;
 }

 if (buf->vaddr) {
  dma_buf_vunmap(buf->db_attach->dmabuf, buf->vaddr);
  buf->vaddr = ((void*)0);
 }
 dma_buf_unmap_attachment(buf->db_attach, sgt, buf->dma_dir);

 buf->dma_addr = 0;
 buf->dma_sgt = ((void*)0);
}
