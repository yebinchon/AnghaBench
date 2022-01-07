
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int lock; } ;


 int IDMAC_CHA_EN (int ) ;
 int idma_mask (int ) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;
 int ipu_idmac_write (struct ipu_soc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_idmac_enable_channel(struct ipuv3_channel *channel)
{
 struct ipu_soc *ipu = channel->ipu;
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&ipu->lock, flags);

 val = ipu_idmac_read(ipu, IDMAC_CHA_EN(channel->num));
 val |= idma_mask(channel->num);
 ipu_idmac_write(ipu, val, IDMAC_CHA_EN(channel->num));

 spin_unlock_irqrestore(&ipu->lock, flags);

 return 0;
}
