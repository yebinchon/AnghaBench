
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_des_dev {int out_sg_len; int out_sg; int dev; int in_sg_len; int in_sg; int pio_only; int total; int req; } ;
struct crypto_tfm {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int crypto_ablkcipher_reqtfm (int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (int ) ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int omap_des_crypt_dma (struct crypto_tfm*,int ,int ,int ,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int omap_des_crypt_dma_start(struct omap_des_dev *dd)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(
     crypto_ablkcipher_reqtfm(dd->req));
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

 err = omap_des_crypt_dma(tfm, dd->in_sg, dd->out_sg, dd->in_sg_len,
     dd->out_sg_len);
 if (err && !dd->pio_only) {
  dma_unmap_sg(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
  dma_unmap_sg(dd->dev, dd->out_sg, dd->out_sg_len,
        DMA_FROM_DEVICE);
 }

 return err;
}
