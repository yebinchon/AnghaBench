
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int * ishtp_dma_tx_map; int * ishtp_host_dma_rx_buf; int * ishtp_host_dma_tx_buf; int ishtp_host_dma_rx_buf_size; int devc; int ishtp_host_dma_rx_buf_phys; int ishtp_host_dma_tx_buf_size; int ishtp_host_dma_tx_buf_phys; } ;
typedef int dma_addr_t ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int kfree (int *) ;

void ishtp_cl_free_dma_buf(struct ishtp_device *dev)
{
 dma_addr_t h;

 if (dev->ishtp_host_dma_tx_buf) {
  h = dev->ishtp_host_dma_tx_buf_phys;
  dma_free_coherent(dev->devc, dev->ishtp_host_dma_tx_buf_size,
      dev->ishtp_host_dma_tx_buf, h);
 }

 if (dev->ishtp_host_dma_rx_buf) {
  h = dev->ishtp_host_dma_rx_buf_phys;
  dma_free_coherent(dev->devc, dev->ishtp_host_dma_rx_buf_size,
      dev->ishtp_host_dma_rx_buf, h);
 }

 kfree(dev->ishtp_dma_tx_map);
 dev->ishtp_host_dma_tx_buf = ((void*)0);
 dev->ishtp_host_dma_rx_buf = ((void*)0);
 dev->ishtp_dma_tx_map = ((void*)0);
}
