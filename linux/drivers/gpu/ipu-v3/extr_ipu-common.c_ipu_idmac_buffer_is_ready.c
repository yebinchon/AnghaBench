
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int lock; } ;


 int IPU_CHA_BUF0_RDY (int ) ;
 int IPU_CHA_BUF1_RDY (int ) ;
 int IPU_CHA_BUF2_RDY (int ) ;
 int idma_mask (int ) ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool ipu_idmac_buffer_is_ready(struct ipuv3_channel *channel, u32 buf_num)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned long flags;
 u32 reg = 0;

 spin_lock_irqsave(&ipu->lock, flags);
 switch (buf_num) {
 case 0:
  reg = ipu_cm_read(ipu, IPU_CHA_BUF0_RDY(channel->num));
  break;
 case 1:
  reg = ipu_cm_read(ipu, IPU_CHA_BUF1_RDY(channel->num));
  break;
 case 2:
  reg = ipu_cm_read(ipu, IPU_CHA_BUF2_RDY(channel->num));
  break;
 }
 spin_unlock_irqrestore(&ipu->lock, flags);

 return ((reg & idma_mask(channel->num)) != 0);
}
