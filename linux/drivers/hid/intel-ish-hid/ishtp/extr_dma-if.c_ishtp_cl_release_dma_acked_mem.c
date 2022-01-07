
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ishtp_device {void* ishtp_host_dma_tx_buf; int ishtp_dma_num_slots; int ishtp_dma_tx_lock; scalar_t__* ishtp_dma_tx_map; int devc; } ;


 int DMA_SLOT_SIZE ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ishtp_cl_release_dma_acked_mem(struct ishtp_device *dev,
        void *msg_addr,
        uint8_t size)
{
 unsigned long flags;
 int acked_slots = (size / DMA_SLOT_SIZE)
  + 1 * (size % DMA_SLOT_SIZE != 0);
 int i, j;

 if ((msg_addr - dev->ishtp_host_dma_tx_buf) % DMA_SLOT_SIZE) {
  dev_err(dev->devc, "Bad DMA Tx ack address\n");
  return;
 }

 i = (msg_addr - dev->ishtp_host_dma_tx_buf) / DMA_SLOT_SIZE;
 spin_lock_irqsave(&dev->ishtp_dma_tx_lock, flags);
 for (j = 0; j < acked_slots; j++) {
  if ((i + j) >= dev->ishtp_dma_num_slots ||
     !dev->ishtp_dma_tx_map[i+j]) {

   spin_unlock_irqrestore(&dev->ishtp_dma_tx_lock, flags);
   dev_err(dev->devc, "Bad DMA Tx ack address\n");
   return;
  }
  dev->ishtp_dma_tx_map[i+j] = 0;
 }
 spin_unlock_irqrestore(&dev->ishtp_dma_tx_lock, flags);
}
