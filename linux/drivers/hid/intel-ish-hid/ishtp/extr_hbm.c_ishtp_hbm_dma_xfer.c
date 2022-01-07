
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ishtp_msg_hdr {unsigned int length; } ;
struct ishtp_device {scalar_t__ ishtp_host_dma_rx_buf_phys; scalar_t__ ishtp_host_dma_rx_buf_size; void* ishtp_host_dma_rx_buf; int devc; int ishtp_msg_hdr; } ;
struct dma_xfer_hbm {scalar_t__ msg_addr; scalar_t__ msg_length; int hbm; } ;


 int DMA_XFER_ACK ;
 int dev_err (int ,char*) ;
 int ishtp_hbm_hdr (struct ishtp_msg_hdr*,unsigned int) ;
 int ishtp_write_message (struct ishtp_device*,struct ishtp_msg_hdr*,unsigned char*) ;
 int recv_ishtp_cl_msg_dma (struct ishtp_device*,void*,struct dma_xfer_hbm*) ;

__attribute__((used)) static void ishtp_hbm_dma_xfer(struct ishtp_device *dev,
          struct dma_xfer_hbm *dma_xfer)
{
 void *msg;
 uint64_t offs;
 struct ishtp_msg_hdr hdr;
 struct ishtp_msg_hdr *ishtp_hdr =
  (struct ishtp_msg_hdr *) &dev->ishtp_msg_hdr;
 struct dma_xfer_hbm *prm = dma_xfer;
 unsigned int msg_offs;

 for (msg_offs = 0; msg_offs < ishtp_hdr->length;
  msg_offs += sizeof(struct dma_xfer_hbm)) {

  offs = dma_xfer->msg_addr - dev->ishtp_host_dma_rx_buf_phys;
  if (offs > dev->ishtp_host_dma_rx_buf_size) {
   dev_err(dev->devc, "Bad DMA Rx message address\n");
   return;
  }
  if (dma_xfer->msg_length >
    dev->ishtp_host_dma_rx_buf_size - offs) {
   dev_err(dev->devc, "Bad DMA Rx message size\n");
   return;
  }
  msg = dev->ishtp_host_dma_rx_buf + offs;
  recv_ishtp_cl_msg_dma(dev, msg, dma_xfer);
  dma_xfer->hbm = DMA_XFER_ACK;
  ++dma_xfer;
 }


 ishtp_hbm_hdr(&hdr, ishtp_hdr->length);
 ishtp_write_message(dev, &hdr, (unsigned char *)prm);
}
