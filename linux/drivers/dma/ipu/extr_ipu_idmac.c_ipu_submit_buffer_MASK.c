#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct idmac_tx_desc {int /*<<< orphan*/  txd; } ;
struct TYPE_4__ {unsigned int chan_id; TYPE_1__* dev; } ;
struct idmac_channel {TYPE_2__ dma_chan; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device device; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct scatterlist*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct idmac_channel*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC5(struct idmac_channel *ichan,
	struct idmac_tx_desc *desc, struct scatterlist *sg, int buf_idx)
{
	unsigned int chan_id = ichan->dma_chan.chan_id;
	struct device *dev = &ichan->dma_chan.dev->device;

	if (FUNC0(&desc->txd))
		return -EINTR;

	/*
	 * On first invocation this shouldn't be necessary, the call to
	 * ipu_init_channel_buffer() above will set addresses for us, so we
	 * could make it conditional on status >= IPU_CHANNEL_ENABLED, but
	 * doing it again shouldn't hurt either.
	 */
	FUNC3(ichan, buf_idx, FUNC4(sg));

	FUNC2(chan_id, buf_idx);
	FUNC1(dev, "Updated sg %p on channel 0x%x buffer %d\n",
		sg, chan_id, buf_idx);

	return 0;
}