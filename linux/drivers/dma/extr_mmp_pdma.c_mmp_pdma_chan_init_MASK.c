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
struct mmp_pdma_phy {int idx; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  channels; } ;
struct mmp_pdma_device {TYPE_2__ device; int /*<<< orphan*/  dev; int /*<<< orphan*/  base; struct mmp_pdma_phy* phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_node; TYPE_2__* device; } ;
struct mmp_pdma_chan {TYPE_1__ chan; int /*<<< orphan*/  chain_running; int /*<<< orphan*/  chain_pending; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dev; int /*<<< orphan*/  desc_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mmp_pdma_chan* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mmp_pdma_phy*) ; 
 int /*<<< orphan*/  dma_do_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmp_pdma_chan_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct mmp_pdma_device *pdev, int idx, int irq)
{
	struct mmp_pdma_phy *phy  = &pdev->phy[idx];
	struct mmp_pdma_chan *chan;
	int ret;

	chan = FUNC2(pdev->dev, sizeof(*chan), GFP_KERNEL);
	if (chan == NULL)
		return -ENOMEM;

	phy->idx = idx;
	phy->base = pdev->base;

	if (irq) {
		ret = FUNC3(pdev->dev, irq, mmp_pdma_chan_handler,
				       IRQF_SHARED, "pdma", phy);
		if (ret) {
			FUNC1(pdev->dev, "channel request irq fail!\n");
			return ret;
		}
	}

	FUNC5(&chan->desc_lock);
	chan->dev = pdev->dev;
	chan->chan.device = &pdev->device;
	FUNC6(&chan->tasklet, dma_do_tasklet, (unsigned long)chan);
	FUNC0(&chan->chain_pending);
	FUNC0(&chan->chain_running);

	/* register virt channel to dma engine */
	FUNC4(&chan->chan.device_node, &pdev->device.channels);

	return 0;
}