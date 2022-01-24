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
struct TYPE_3__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  done; int /*<<< orphan*/  active; int /*<<< orphan*/  pending; int /*<<< orphan*/  free; } ;
struct dma_chan {int /*<<< orphan*/  device_node; TYPE_2__* device; } ;
struct rcar_dmac_chan {unsigned int index; int /*<<< orphan*/  irq; TYPE_1__ desc; int /*<<< orphan*/  lock; int /*<<< orphan*/  mid_rid; scalar_t__ iomem; struct dma_chan chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  channels; } ;
struct rcar_dmac {int /*<<< orphan*/  dev; TYPE_2__ engine; scalar_t__ iomem; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rcar_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  rcar_dmac_isr_channel ; 
 int /*<<< orphan*/  rcar_dmac_isr_channel_thread ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned int) ; 
 struct platform_device* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct rcar_dmac *dmac,
				struct rcar_dmac_chan *rchan,
				unsigned int index)
{
	struct platform_device *pdev = FUNC11(dmac->dev);
	struct dma_chan *chan = &rchan->chan;
	char pdev_irqname[5];
	char *irqname;
	int ret;

	rchan->index = index;
	rchan->iomem = dmac->iomem + FUNC1(index);
	rchan->mid_rid = -EINVAL;

	FUNC9(&rchan->lock);

	FUNC0(&rchan->desc.free);
	FUNC0(&rchan->desc.pending);
	FUNC0(&rchan->desc.active);
	FUNC0(&rchan->desc.done);
	FUNC0(&rchan->desc.wait);

	/* Request the channel interrupt. */
	FUNC10(pdev_irqname, "ch%u", index);
	rchan->irq = FUNC8(pdev, pdev_irqname);
	if (rchan->irq < 0)
		return -ENODEV;

	irqname = FUNC4(dmac->dev, GFP_KERNEL, "%s:%u",
				 FUNC3(dmac->dev), index);
	if (!irqname)
		return -ENOMEM;

	/*
	 * Initialize the DMA engine channel and add it to the DMA engine
	 * channels list.
	 */
	chan->device = &dmac->engine;
	FUNC6(chan);

	FUNC7(&chan->device_node, &dmac->engine.channels);

	ret = FUNC5(dmac->dev, rchan->irq,
					rcar_dmac_isr_channel,
					rcar_dmac_isr_channel_thread, 0,
					irqname, rchan);
	if (ret) {
		FUNC2(dmac->dev, "failed to request IRQ %u (%d)\n",
			rchan->irq, ret);
		return ret;
	}

	return 0;
}