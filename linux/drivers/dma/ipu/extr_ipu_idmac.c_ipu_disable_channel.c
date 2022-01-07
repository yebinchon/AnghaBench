
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct ipu {int lock; int dev; } ;
struct TYPE_2__ {int chan_id; } ;
struct idmac_channel {int eof_irq; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;


 int IDMAC_CHA_BUSY ;
 int IDMAC_CHA_EN ;
 int IDMAC_SDC_0 ;
 int IDMAC_SDC_1 ;
 int IPU_CHA_BUF0_RDY ;
 int IPU_CHA_BUF1_RDY ;
 int IPU_TASKS_STAT ;
 scalar_t__ TASK_STAT_ACTIVE ;
 int dev_dbg (int ,char*,int,...) ;
 unsigned long idmac_read_icreg (struct ipu*,int ) ;
 int idmac_read_ipureg (struct ipu*,int ) ;
 int idmac_write_icreg (struct ipu*,unsigned long,int ) ;
 scalar_t__ ipu_channel_status (struct ipu*,int) ;
 int ipu_ic_disable_task (struct ipu*,int) ;
 int ipu_irq_status (int ) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipu* to_ipu (struct idmac*) ;

__attribute__((used)) static int ipu_disable_channel(struct idmac *idmac, struct idmac_channel *ichan,
          bool wait_for_stop)
{
 enum ipu_channel channel = ichan->dma_chan.chan_id;
 struct ipu *ipu = to_ipu(idmac);
 uint32_t reg;
 unsigned long flags;
 unsigned long chan_mask = 1UL << channel;
 unsigned int timeout;

 if (wait_for_stop && channel != IDMAC_SDC_1 && channel != IDMAC_SDC_0) {
  timeout = 40;

  while ((idmac_read_icreg(ipu, IDMAC_CHA_BUSY) & chan_mask) ||
         (ipu_channel_status(ipu, channel) == TASK_STAT_ACTIVE)) {
   timeout--;
   msleep(10);

   if (!timeout) {
    dev_dbg(ipu->dev,
     "Warning: timeout waiting for channel %u to "
     "stop: buf0_rdy = 0x%08X, buf1_rdy = 0x%08X, "
     "busy = 0x%08X, tstat = 0x%08X\n", channel,
     idmac_read_ipureg(ipu, IPU_CHA_BUF0_RDY),
     idmac_read_ipureg(ipu, IPU_CHA_BUF1_RDY),
     idmac_read_icreg(ipu, IDMAC_CHA_BUSY),
     idmac_read_ipureg(ipu, IPU_TASKS_STAT));
    break;
   }
  }
  dev_dbg(ipu->dev, "timeout = %d * 10ms\n", 40 - timeout);
 }

 if (wait_for_stop && (channel == IDMAC_SDC_0 ||
         channel == IDMAC_SDC_1)) {
  for (timeout = 5;
       timeout && !ipu_irq_status(ichan->eof_irq); timeout--)
   msleep(5);
 }

 spin_lock_irqsave(&ipu->lock, flags);


 ipu_ic_disable_task(ipu, channel);


 reg = idmac_read_icreg(ipu, IDMAC_CHA_EN);
 idmac_write_icreg(ipu, reg & ~chan_mask, IDMAC_CHA_EN);

 spin_unlock_irqrestore(&ipu->lock, flags);

 return 0;
}
