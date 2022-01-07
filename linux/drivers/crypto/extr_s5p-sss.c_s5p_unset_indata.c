
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int sg_src; int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_sg (int ,int ,int,int ) ;

__attribute__((used)) static void s5p_unset_indata(struct s5p_aes_dev *dev)
{
 dma_unmap_sg(dev->dev, dev->sg_src, 1, DMA_TO_DEVICE);
}
