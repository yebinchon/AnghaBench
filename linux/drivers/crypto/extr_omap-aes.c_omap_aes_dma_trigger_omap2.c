
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_aes_dev {TYPE_1__* pdata; int * dma_lch_in; int * dma_lch_out; } ;
struct TYPE_2__ {int dma_start; int dma_enable_out; int dma_enable_in; } ;


 int AES_REG_MASK (struct omap_aes_dev*) ;
 int omap_aes_write_mask (struct omap_aes_dev*,int ,int,int) ;

__attribute__((used)) static void omap_aes_dma_trigger_omap2(struct omap_aes_dev *dd, int length)
{
 u32 mask, val;

 val = dd->pdata->dma_start;

 if (dd->dma_lch_out != ((void*)0))
  val |= dd->pdata->dma_enable_out;
 if (dd->dma_lch_in != ((void*)0))
  val |= dd->pdata->dma_enable_in;

 mask = dd->pdata->dma_enable_out | dd->pdata->dma_enable_in |
        dd->pdata->dma_start;

 omap_aes_write_mask(dd, AES_REG_MASK(dd), val, mask);

}
