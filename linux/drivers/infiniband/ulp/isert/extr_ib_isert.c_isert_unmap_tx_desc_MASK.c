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
struct iser_tx_desc {scalar_t__ dma_addr; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ISER_HEADERS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct iser_tx_desc *tx_desc, struct ib_device *ib_dev)
{
	if (tx_desc->dma_addr != 0) {
		FUNC1("unmap single for tx_desc->dma_addr\n");
		FUNC0(ib_dev, tx_desc->dma_addr,
				    ISER_HEADERS_LEN, DMA_TO_DEVICE);
		tx_desc->dma_addr = 0;
	}
}