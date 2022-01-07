
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct s5p_aes_dev {struct scatterlist* sg_dst; int dev; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;

__attribute__((used)) static int s5p_set_outdata(struct s5p_aes_dev *dev, struct scatterlist *sg)
{
 if (!sg->length)
  return -EINVAL;

 if (!dma_map_sg(dev->dev, sg, 1, DMA_FROM_DEVICE))
  return -ENOMEM;

 dev->sg_dst = sg;

 return 0;
}
