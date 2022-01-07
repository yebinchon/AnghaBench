
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int lock; } ;


 int IDMAC_WM_EN (int) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;
 int ipu_idmac_write (struct ipu_soc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_idmac_enable_watermark(struct ipuv3_channel *channel, bool enable)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&ipu->lock, flags);

 val = ipu_idmac_read(ipu, IDMAC_WM_EN(channel->num));
 if (enable)
  val |= 1 << (channel->num % 32);
 else
  val &= ~(1 << (channel->num % 32));
 ipu_idmac_write(ipu, val, IDMAC_WM_EN(channel->num));

 spin_unlock_irqrestore(&ipu->lock, flags);
}
