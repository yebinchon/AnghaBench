
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_des_dev {int dma_lch_out; int dma_lch_in; int total; } ;


 int dmaengine_terminate_all (int ) ;
 int omap_des_dma_stop (struct omap_des_dev*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int omap_des_crypt_dma_stop(struct omap_des_dev *dd)
{
 pr_debug("total: %d\n", dd->total);

 omap_des_dma_stop(dd);

 dmaengine_terminate_all(dd->dma_lch_in);
 dmaengine_terminate_all(dd->dma_lch_out);

 return 0;
}
