
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int lock; } ;


 int IPU_CHA_BUF0_RDY (unsigned int) ;
 int IPU_CHA_BUF1_RDY (unsigned int) ;
 int IPU_CHA_BUF2_RDY (unsigned int) ;
 int IPU_GPR ;
 int idma_mask (unsigned int) ;
 int ipu_cm_write (struct ipu_soc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_idmac_clear_buffer(struct ipuv3_channel *channel, u32 buf_num)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned int chno = channel->num;
 unsigned long flags;

 spin_lock_irqsave(&ipu->lock, flags);

 ipu_cm_write(ipu, 0xF0300000, IPU_GPR);
 switch (buf_num) {
 case 0:
  ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_BUF0_RDY(chno));
  break;
 case 1:
  ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_BUF1_RDY(chno));
  break;
 case 2:
  ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_BUF2_RDY(chno));
  break;
 default:
  break;
 }
 ipu_cm_write(ipu, 0x0, IPU_GPR);

 spin_unlock_irqrestore(&ipu->lock, flags);
}
