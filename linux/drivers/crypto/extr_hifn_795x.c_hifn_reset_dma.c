
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {int dummy; } ;


 int HIFN_1_DMA_CNFG ;
 int HIFN_DMACNFG_DMARESET ;
 int HIFN_DMACNFG_MODE ;
 int HIFN_DMACNFG_MSTRESET ;
 int hifn_reset_puc (struct hifn_device*) ;
 int hifn_stop_device (struct hifn_device*) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void hifn_reset_dma(struct hifn_device *dev, int full)
{
 hifn_stop_device(dev);




 hifn_write_1(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
   HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
 mdelay(1);




 if (full) {
  hifn_write_1(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE);
  mdelay(1);
 } else {
  hifn_write_1(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE |
    HIFN_DMACNFG_MSTRESET);
  hifn_reset_puc(dev);
 }

 hifn_write_1(dev, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
   HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

 hifn_reset_puc(dev);
}
