
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct dma_buf_attachment {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_sg (int ,int ,int ,int) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void unmap_udmabuf(struct dma_buf_attachment *at,
     struct sg_table *sg,
     enum dma_data_direction direction)
{
 dma_unmap_sg(at->dev, sg->sgl, sg->nents, direction);
 sg_free_table(sg);
 kfree(sg);
}
