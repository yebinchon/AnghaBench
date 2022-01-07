
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_des_dev {int flags; int total_save; int * orig_out; int out_sgl; int in_sgl; int out_sg_len; int out_sg; int dev; int in_sg_len; int in_sg; int pio_only; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int FLAGS_IN_DATA_ST_SHIFT ;
 int FLAGS_OUT_DATA_ST_SHIFT ;
 int dma_sync_sg_for_device (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int omap_crypto_cleanup (int *,int *,int ,int ,int ,int ) ;
 int omap_des_crypt_dma_stop (struct omap_des_dev*) ;
 int omap_des_finish_req (struct omap_des_dev*,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void omap_des_done_task(unsigned long data)
{
 struct omap_des_dev *dd = (struct omap_des_dev *)data;

 pr_debug("enter done_task\n");

 if (!dd->pio_only) {
  dma_sync_sg_for_device(dd->dev, dd->out_sg, dd->out_sg_len,
           DMA_FROM_DEVICE);
  dma_unmap_sg(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
  dma_unmap_sg(dd->dev, dd->out_sg, dd->out_sg_len,
        DMA_FROM_DEVICE);
  omap_des_crypt_dma_stop(dd);
 }

 omap_crypto_cleanup(&dd->in_sgl, ((void*)0), 0, dd->total_save,
       FLAGS_IN_DATA_ST_SHIFT, dd->flags);

 omap_crypto_cleanup(&dd->out_sgl, dd->orig_out, 0, dd->total_save,
       FLAGS_OUT_DATA_ST_SHIFT, dd->flags);

 omap_des_finish_req(dd, 0);

 pr_debug("exit\n");
}
