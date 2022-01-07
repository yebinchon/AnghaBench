
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udmabuf {int pagecount; int pages; } ;
struct sg_table {int nents; int sgl; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct udmabuf* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int dma_map_sg (int ,int ,int ,int) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kzalloc (int,int ) ;
 int sg_alloc_table_from_pages (struct sg_table*,int ,int,int ,int,int ) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static struct sg_table *map_udmabuf(struct dma_buf_attachment *at,
        enum dma_data_direction direction)
{
 struct udmabuf *ubuf = at->dmabuf->priv;
 struct sg_table *sg;
 int ret;

 sg = kzalloc(sizeof(*sg), GFP_KERNEL);
 if (!sg)
  return ERR_PTR(-ENOMEM);
 ret = sg_alloc_table_from_pages(sg, ubuf->pages, ubuf->pagecount,
     0, ubuf->pagecount << PAGE_SHIFT,
     GFP_KERNEL);
 if (ret < 0)
  goto err;
 if (!dma_map_sg(at->dev, sg->sgl, sg->nents, direction)) {
  ret = -EINVAL;
  goto err;
 }
 return sg;

err:
 sg_free_table(sg);
 kfree(sg);
 return ERR_PTR(ret);
}
