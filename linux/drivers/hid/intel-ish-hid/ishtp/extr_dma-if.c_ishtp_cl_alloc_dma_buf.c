
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ishtp_device {int ishtp_host_dma_tx_buf_size; int ishtp_host_dma_rx_buf_size; int ishtp_dma_num_slots; void* ishtp_host_dma_rx_buf_phys; void* ishtp_host_dma_rx_buf; int devc; int ishtp_dma_tx_lock; int ishtp_dma_tx_map; void* ishtp_host_dma_tx_buf_phys; void* ishtp_host_dma_tx_buf; } ;
typedef void* dma_addr_t ;


 int DMA_SLOT_SIZE ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,int,void**,int ) ;
 int kcalloc (int,int,int ) ;
 int spin_lock_init (int *) ;

void ishtp_cl_alloc_dma_buf(struct ishtp_device *dev)
{
 dma_addr_t h;

 if (dev->ishtp_host_dma_tx_buf)
  return;

 dev->ishtp_host_dma_tx_buf_size = 1024*1024;
 dev->ishtp_host_dma_rx_buf_size = 1024*1024;


 dev->ishtp_host_dma_tx_buf = dma_alloc_coherent(dev->devc,
     dev->ishtp_host_dma_tx_buf_size,
     &h, GFP_KERNEL);
 if (dev->ishtp_host_dma_tx_buf)
  dev->ishtp_host_dma_tx_buf_phys = h;

 dev->ishtp_dma_num_slots = dev->ishtp_host_dma_tx_buf_size /
      DMA_SLOT_SIZE;

 dev->ishtp_dma_tx_map = kcalloc(dev->ishtp_dma_num_slots,
     sizeof(uint8_t),
     GFP_KERNEL);
 spin_lock_init(&dev->ishtp_dma_tx_lock);


 dev->ishtp_host_dma_rx_buf = dma_alloc_coherent(dev->devc,
     dev->ishtp_host_dma_rx_buf_size,
      &h, GFP_KERNEL);

 if (dev->ishtp_host_dma_rx_buf)
  dev->ishtp_host_dma_rx_buf_phys = h;
}
