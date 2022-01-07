
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int dma_lch_in; int dma_lch_out; scalar_t__ pio_only; } ;


 int dma_release_channel (int ) ;

__attribute__((used)) static void omap_aes_dma_cleanup(struct omap_aes_dev *dd)
{
 if (dd->pio_only)
  return;

 dma_release_channel(dd->dma_lch_out);
 dma_release_channel(dd->dma_lch_in);
}
