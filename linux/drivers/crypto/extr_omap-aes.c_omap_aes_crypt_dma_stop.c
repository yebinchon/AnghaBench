
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int total; } ;


 int omap_aes_dma_stop (struct omap_aes_dev*) ;
 int pr_debug (char*,int ) ;

int omap_aes_crypt_dma_stop(struct omap_aes_dev *dd)
{
 pr_debug("total: %d\n", dd->total);

 omap_aes_dma_stop(dd);


 return 0;
}
