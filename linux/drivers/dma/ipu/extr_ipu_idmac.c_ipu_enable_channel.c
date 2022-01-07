
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct ipu {int lock; } ;
struct TYPE_2__ {int chan_id; } ;
struct idmac_channel {int status; scalar_t__ active_buffer; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IDMAC_CHA_EN ;



 int IPU_CHANNEL_ENABLED ;
 int IPU_CHA_CUR_BUF ;
 unsigned long idmac_read_icreg (struct ipu*,int ) ;
 int idmac_write_icreg (struct ipu*,unsigned long,int ) ;
 int idmac_write_ipureg (struct ipu*,unsigned long,int ) ;
 int ipu_channel_set_priority (struct ipu*,int,int) ;
 int ipu_ic_enable_task (struct ipu*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipu* to_ipu (struct idmac*) ;

__attribute__((used)) static int ipu_enable_channel(struct idmac *idmac, struct idmac_channel *ichan)
{
 struct ipu *ipu = to_ipu(idmac);
 enum ipu_channel channel = ichan->dma_chan.chan_id;
 uint32_t reg;
 unsigned long flags;

 spin_lock_irqsave(&ipu->lock, flags);


 idmac_write_ipureg(ipu, 1UL << channel, IPU_CHA_CUR_BUF);
 ichan->active_buffer = 0;
 ichan->status = IPU_CHANNEL_ENABLED;

 switch (channel) {
 case 129:
 case 128:
 case 130:
  ipu_channel_set_priority(ipu, channel, 1);
 default:
  break;
 }

 reg = idmac_read_icreg(ipu, IDMAC_CHA_EN);

 idmac_write_icreg(ipu, reg | (1UL << channel), IDMAC_CHA_EN);

 ipu_ic_enable_task(ipu, channel);

 spin_unlock_irqrestore(&ipu->lock, flags);
 return 0;
}
