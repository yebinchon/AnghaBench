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
typedef  int uint8_t ;
struct ishtp_device {void* ishtp_host_dma_tx_buf; int ishtp_dma_num_slots; int /*<<< orphan*/  ishtp_dma_tx_lock; scalar_t__* ishtp_dma_tx_map; int /*<<< orphan*/  devc; } ;

/* Variables and functions */
 int DMA_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ishtp_device *dev,
				    void *msg_addr,
				    uint8_t size)
{
	unsigned long	flags;
	int acked_slots = (size / DMA_SLOT_SIZE)
		+ 1 * (size % DMA_SLOT_SIZE != 0);
	int i, j;

	if ((msg_addr - dev->ishtp_host_dma_tx_buf) % DMA_SLOT_SIZE) {
		FUNC0(dev->devc, "Bad DMA Tx ack address\n");
		return;
	}

	i = (msg_addr - dev->ishtp_host_dma_tx_buf) / DMA_SLOT_SIZE;
	FUNC1(&dev->ishtp_dma_tx_lock, flags);
	for (j = 0; j < acked_slots; j++) {
		if ((i + j) >= dev->ishtp_dma_num_slots ||
					!dev->ishtp_dma_tx_map[i+j]) {
			/* no such slot, or memory is already free */
			FUNC2(&dev->ishtp_dma_tx_lock, flags);
			FUNC0(dev->devc, "Bad DMA Tx ack address\n");
			return;
		}
		dev->ishtp_dma_tx_map[i+j] = 0;
	}
	FUNC2(&dev->ishtp_dma_tx_lock, flags);
}