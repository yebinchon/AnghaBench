
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_des_dev {TYPE_1__* pdata; int * dma_lch_in; int * dma_lch_out; } ;
struct TYPE_2__ {int dma_start; int dma_enable_out; int dma_enable_in; } ;


 int DES_REG_LENGTH_N (int ) ;
 int DES_REG_MASK (struct omap_des_dev*) ;
 int omap_des_write (struct omap_des_dev*,int ,int) ;
 int omap_des_write_mask (struct omap_des_dev*,int ,int,int) ;

__attribute__((used)) static void omap_des_dma_trigger_omap4(struct omap_des_dev *dd, int length)
{
 u32 mask, val;

 omap_des_write(dd, DES_REG_LENGTH_N(0), length);

 val = dd->pdata->dma_start;

 if (dd->dma_lch_out != ((void*)0))
  val |= dd->pdata->dma_enable_out;
 if (dd->dma_lch_in != ((void*)0))
  val |= dd->pdata->dma_enable_in;

 mask = dd->pdata->dma_enable_out | dd->pdata->dma_enable_in |
        dd->pdata->dma_start;

 omap_des_write_mask(dd, DES_REG_MASK(dd), val, mask);
}
