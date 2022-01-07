
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int lock; } ;


 int IPU_CHA_BUF0_RDY (unsigned int) ;
 int IPU_CHA_BUF1_RDY (unsigned int) ;
 int idma_mask (unsigned int) ;
 int ipu_cm_write (struct ipu_soc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_idmac_select_buffer(struct ipuv3_channel *channel, u32 buf_num)
{
 struct ipu_soc *ipu = channel->ipu;
 unsigned int chno = channel->num;
 unsigned long flags;

 spin_lock_irqsave(&ipu->lock, flags);


 if (buf_num == 0)
  ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_BUF0_RDY(chno));
 else
  ipu_cm_write(ipu, idma_mask(chno), IPU_CHA_BUF1_RDY(chno));

 spin_unlock_irqrestore(&ipu->lock, flags);
}
