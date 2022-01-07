
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int sg_dst; int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_sg (int ,int ,int,int ) ;

__attribute__((used)) static void s5p_unset_outdata(struct s5p_aes_dev *dev)
{
 dma_unmap_sg(dev->dev, dev->sg_dst, 1, DMA_FROM_DEVICE);
}
