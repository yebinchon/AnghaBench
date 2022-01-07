
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_i2c_dev {int * sg_io; int dev; scalar_t__ dma_read; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (int ,int *,int,int ) ;

__attribute__((used)) static void mxs_i2c_dma_finish(struct mxs_i2c_dev *i2c)
{
 if (i2c->dma_read) {
  dma_unmap_sg(i2c->dev, &i2c->sg_io[0], 1, DMA_TO_DEVICE);
  dma_unmap_sg(i2c->dev, &i2c->sg_io[1], 1, DMA_FROM_DEVICE);
 } else {
  dma_unmap_sg(i2c->dev, i2c->sg_io, 2, DMA_TO_DEVICE);
 }
}
