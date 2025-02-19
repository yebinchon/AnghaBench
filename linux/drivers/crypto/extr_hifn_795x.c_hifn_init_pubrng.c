
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_device {int dmareg; int rngtime; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HIFN_1_DMA_IER ;
 int HIFN_1_PUB_IEN ;
 int HIFN_1_PUB_RESET ;
 int HIFN_1_RNG_CONFIG ;
 int HIFN_1_RNG_DATA ;
 int HIFN_DMAIER_PUBDONE ;
 int HIFN_PUBIEN_DONE ;
 int HIFN_PUBRST_RESET ;
 int HIFN_RNGCFG_ENA ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hifn_read_1 (struct hifn_device*,int ) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;
 int ktime_get () ;
 int mdelay (int) ;

__attribute__((used)) static int hifn_init_pubrng(struct hifn_device *dev)
{
 int i;

 hifn_write_1(dev, HIFN_1_PUB_RESET, hifn_read_1(dev, HIFN_1_PUB_RESET) |
   HIFN_PUBRST_RESET);

 for (i = 100; i > 0; --i) {
  mdelay(1);

  if ((hifn_read_1(dev, HIFN_1_PUB_RESET) & HIFN_PUBRST_RESET) == 0)
   break;
 }

 if (!i) {
  dev_err(&dev->pdev->dev, "Failed to initialise public key engine.\n");
 } else {
  hifn_write_1(dev, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
  dev->dmareg |= HIFN_DMAIER_PUBDONE;
  hifn_write_1(dev, HIFN_1_DMA_IER, dev->dmareg);

  dev_dbg(&dev->pdev->dev, "Public key engine has been successfully initialised.\n");
 }



 hifn_write_1(dev, HIFN_1_RNG_CONFIG,
   hifn_read_1(dev, HIFN_1_RNG_CONFIG) | HIFN_RNGCFG_ENA);
 dev_dbg(&dev->pdev->dev, "RNG engine has been successfully initialised.\n");






 return 0;
}
