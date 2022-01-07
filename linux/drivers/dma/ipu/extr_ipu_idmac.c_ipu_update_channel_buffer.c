
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct TYPE_6__ {int chan_id; } ;
struct idmac_channel {void* status; TYPE_1__ dma_chan; } ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;
typedef int dma_addr_t ;
struct TYPE_7__ {int lock; } ;


 void* IPU_CHANNEL_READY ;
 int IPU_CHA_BUF0_RDY ;
 int IPU_CHA_BUF1_RDY ;
 int IPU_CHA_DB_MODE_SEL ;
 int IPU_IMA_ADDR ;
 int IPU_IMA_DATA ;
 int dma_param_addr (int) ;
 unsigned long idmac_read_ipureg (TYPE_2__*,int ) ;
 int idmac_write_ipureg (TYPE_2__*,int,int ) ;
 TYPE_2__ ipu_data ;
 int ipu_ic_disable_task (TYPE_2__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipu_update_channel_buffer(struct idmac_channel *ichan,
          int buffer_n, dma_addr_t phyaddr)
{
 enum ipu_channel channel = ichan->dma_chan.chan_id;
 uint32_t reg;
 unsigned long flags;

 spin_lock_irqsave(&ipu_data.lock, flags);

 if (buffer_n == 0) {
  reg = idmac_read_ipureg(&ipu_data, IPU_CHA_BUF0_RDY);
  if (reg & (1UL << channel)) {
   ipu_ic_disable_task(&ipu_data, channel);
   ichan->status = IPU_CHANNEL_READY;
  }


  idmac_write_ipureg(&ipu_data, dma_param_addr(channel) +
       0x0008UL, IPU_IMA_ADDR);
  idmac_write_ipureg(&ipu_data, phyaddr, IPU_IMA_DATA);
 } else {
  reg = idmac_read_ipureg(&ipu_data, IPU_CHA_BUF1_RDY);
  if (reg & (1UL << channel)) {
   ipu_ic_disable_task(&ipu_data, channel);
   ichan->status = IPU_CHANNEL_READY;
  }


  reg = idmac_read_ipureg(&ipu_data, IPU_CHA_DB_MODE_SEL);

  if (!(reg & (1UL << channel)))
   idmac_write_ipureg(&ipu_data, reg | (1UL << channel),
        IPU_CHA_DB_MODE_SEL);


  idmac_write_ipureg(&ipu_data, dma_param_addr(channel) +
       0x0009UL, IPU_IMA_ADDR);
  idmac_write_ipureg(&ipu_data, phyaddr, IPU_IMA_DATA);
 }

 spin_unlock_irqrestore(&ipu_data.lock, flags);
}
