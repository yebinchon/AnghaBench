
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct mock_dmabuf {int npages; int * pages; } ;
struct dma_buf_attachment {int dev; int dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int dma_map_sg (int ,struct scatterlist*,int ,int) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_free_table (struct sg_table*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;
 struct mock_dmabuf* to_mock (int ) ;

__attribute__((used)) static struct sg_table *mock_map_dma_buf(struct dma_buf_attachment *attachment,
      enum dma_data_direction dir)
{
 struct mock_dmabuf *mock = to_mock(attachment->dmabuf);
 struct sg_table *st;
 struct scatterlist *sg;
 int i, err;

 st = kmalloc(sizeof(*st), GFP_KERNEL);
 if (!st)
  return ERR_PTR(-ENOMEM);

 err = sg_alloc_table(st, mock->npages, GFP_KERNEL);
 if (err)
  goto err_free;

 sg = st->sgl;
 for (i = 0; i < mock->npages; i++) {
  sg_set_page(sg, mock->pages[i], PAGE_SIZE, 0);
  sg = sg_next(sg);
 }

 if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
  err = -ENOMEM;
  goto err_st;
 }

 return st;

err_st:
 sg_free_table(st);
err_free:
 kfree(st);
 return ERR_PTR(err);
}
