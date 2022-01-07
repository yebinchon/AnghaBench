
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dc_buf {int vec; int dma_dir; int size; int dma_addr; int dev; int orig_nents; int sgl; struct vb2_dc_buf* dma_sgt; } ;
struct sg_table {int vec; int dma_dir; int size; int dma_addr; int dev; int orig_nents; int sgl; struct sg_table* dma_sgt; } ;
struct page {int dummy; } ;


 int BUG_ON (int ) ;
 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int IS_ERR (struct page**) ;
 int dma_unmap_resource (int ,int ,int ,int ,int ) ;
 int dma_unmap_sg_attrs (int ,int ,int ,int ,int ) ;
 int frame_vector_count (int ) ;
 struct page** frame_vector_pages (int ) ;
 int kfree (struct vb2_dc_buf*) ;
 int set_page_dirty_lock (struct page*) ;
 int sg_free_table (struct vb2_dc_buf*) ;
 int vb2_destroy_framevec (int ) ;

__attribute__((used)) static void vb2_dc_put_userptr(void *buf_priv)
{
 struct vb2_dc_buf *buf = buf_priv;
 struct sg_table *sgt = buf->dma_sgt;
 int i;
 struct page **pages;

 if (sgt) {




  dma_unmap_sg_attrs(buf->dev, sgt->sgl, sgt->orig_nents,
       buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
  pages = frame_vector_pages(buf->vec);

  BUG_ON(IS_ERR(pages));
  if (buf->dma_dir == DMA_FROM_DEVICE ||
      buf->dma_dir == DMA_BIDIRECTIONAL)
   for (i = 0; i < frame_vector_count(buf->vec); i++)
    set_page_dirty_lock(pages[i]);
  sg_free_table(sgt);
  kfree(sgt);
 } else {
  dma_unmap_resource(buf->dev, buf->dma_addr, buf->size,
       buf->dma_dir, 0);
 }
 vb2_destroy_framevec(buf->vec);
 kfree(buf);
}
