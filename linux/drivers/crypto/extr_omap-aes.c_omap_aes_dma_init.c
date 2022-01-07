
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int * dma_lch_in; int * dma_lch_out; int dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int ,char*) ;
 int dma_release_channel (int *) ;
 void* dma_request_chan (int ,char*) ;

__attribute__((used)) static int omap_aes_dma_init(struct omap_aes_dev *dd)
{
 int err;

 dd->dma_lch_out = ((void*)0);
 dd->dma_lch_in = ((void*)0);

 dd->dma_lch_in = dma_request_chan(dd->dev, "rx");
 if (IS_ERR(dd->dma_lch_in)) {
  dev_err(dd->dev, "Unable to request in DMA channel\n");
  return PTR_ERR(dd->dma_lch_in);
 }

 dd->dma_lch_out = dma_request_chan(dd->dev, "tx");
 if (IS_ERR(dd->dma_lch_out)) {
  dev_err(dd->dev, "Unable to request out DMA channel\n");
  err = PTR_ERR(dd->dma_lch_out);
  goto err_dma_out;
 }

 return 0;

err_dma_out:
 dma_release_channel(dd->dma_lch_in);

 return err;
}
