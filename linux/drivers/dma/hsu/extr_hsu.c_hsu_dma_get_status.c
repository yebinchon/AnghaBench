
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hsu_dma_chip {TYPE_2__* hsu; } ;
struct TYPE_3__ {int lock; } ;
struct hsu_dma_chan {TYPE_1__ vchan; } ;
struct TYPE_4__ {unsigned short nr_channels; struct hsu_dma_chan* chan; } ;


 int EINVAL ;
 int EIO ;
 int HSU_CH_SR ;
 int HSU_CH_SR_CDESC_ANY ;
 int HSU_CH_SR_DESCE_ANY ;
 int HSU_CH_SR_DESCTO_ANY ;
 int hsu_chan_readl (struct hsu_dma_chan*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

int hsu_dma_get_status(struct hsu_dma_chip *chip, unsigned short nr,
         u32 *status)
{
 struct hsu_dma_chan *hsuc;
 unsigned long flags;
 u32 sr;


 if (nr >= chip->hsu->nr_channels)
  return -EINVAL;

 hsuc = &chip->hsu->chan[nr];





 spin_lock_irqsave(&hsuc->vchan.lock, flags);
 sr = hsu_chan_readl(hsuc, HSU_CH_SR);
 spin_unlock_irqrestore(&hsuc->vchan.lock, flags);


 sr &= ~(HSU_CH_SR_DESCE_ANY | HSU_CH_SR_CDESC_ANY);
 if (!sr)
  return -EIO;


 if (sr & HSU_CH_SR_DESCTO_ANY)
  udelay(2);
 sr &= ~HSU_CH_SR_DESCTO_ANY;

 *status = sr;

 return sr ? 0 : 1;
}
