
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int out_sg_len; int out_sg; int dev; int in_sg_len; int in_sg; int pio_only; int total; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int omap_aes_crypt_dma (struct omap_aes_dev*,int ,int ,int ,int ) ;
 int pr_debug (char*,int ) ;

int omap_aes_crypt_dma_start(struct omap_aes_dev *dd)
{
 int err;

 pr_debug("total: %d\n", dd->total);

 if (!dd->pio_only) {
  err = dma_map_sg(dd->dev, dd->in_sg, dd->in_sg_len,
     DMA_TO_DEVICE);
  if (!err) {
   dev_err(dd->dev, "dma_map_sg() error\n");
   return -EINVAL;
  }

  err = dma_map_sg(dd->dev, dd->out_sg, dd->out_sg_len,
     DMA_FROM_DEVICE);
  if (!err) {
   dev_err(dd->dev, "dma_map_sg() error\n");
   return -EINVAL;
  }
 }

 err = omap_aes_crypt_dma(dd, dd->in_sg, dd->out_sg, dd->in_sg_len,
     dd->out_sg_len);
 if (err && !dd->pio_only) {
  dma_unmap_sg(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
  dma_unmap_sg(dd->dev, dd->out_sg, dd->out_sg_len,
        DMA_FROM_DEVICE);
 }

 return err;
}
