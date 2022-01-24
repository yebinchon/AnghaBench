#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct ishtp_msg_hdr {unsigned int length; } ;
struct ishtp_device {scalar_t__ ishtp_host_dma_rx_buf_phys; scalar_t__ ishtp_host_dma_rx_buf_size; void* ishtp_host_dma_rx_buf; int /*<<< orphan*/  devc; int /*<<< orphan*/  ishtp_msg_hdr; } ;
struct dma_xfer_hbm {scalar_t__ msg_addr; scalar_t__ msg_length; int /*<<< orphan*/  hbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_XFER_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_msg_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*,struct ishtp_msg_hdr*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_device*,void*,struct dma_xfer_hbm*) ; 

__attribute__((used)) static void FUNC4(struct ishtp_device *dev,
			       struct dma_xfer_hbm *dma_xfer)
{
	void	*msg;
	uint64_t	offs;
	struct ishtp_msg_hdr	hdr;
	struct ishtp_msg_hdr	*ishtp_hdr =
		(struct ishtp_msg_hdr *) &dev->ishtp_msg_hdr;
	struct dma_xfer_hbm	*prm = dma_xfer;
	unsigned int	msg_offs;

	for (msg_offs = 0; msg_offs < ishtp_hdr->length;
		msg_offs += sizeof(struct dma_xfer_hbm)) {

		offs = dma_xfer->msg_addr - dev->ishtp_host_dma_rx_buf_phys;
		if (offs > dev->ishtp_host_dma_rx_buf_size) {
			FUNC0(dev->devc, "Bad DMA Rx message address\n");
			return;
		}
		if (dma_xfer->msg_length >
				dev->ishtp_host_dma_rx_buf_size - offs) {
			FUNC0(dev->devc, "Bad DMA Rx message size\n");
			return;
		}
		msg = dev->ishtp_host_dma_rx_buf + offs;
		FUNC3(dev, msg, dma_xfer);
		dma_xfer->hbm = DMA_XFER_ACK;	/* Prepare for response */
		++dma_xfer;
	}

	/* Send DMA_XFER_ACK [...] */
	FUNC1(&hdr, ishtp_hdr->length);
	FUNC2(dev, &hdr, (unsigned char *)prm);
}