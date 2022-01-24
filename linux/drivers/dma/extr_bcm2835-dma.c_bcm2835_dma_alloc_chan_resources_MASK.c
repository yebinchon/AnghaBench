#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct bcm2835_dma_cb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct bcm2835_chan {int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq_number; int /*<<< orphan*/  cb_pool; int /*<<< orphan*/  ch; TYPE_3__ vc; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  bcm2835_dma_callback ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct bcm2835_chan*) ; 
 struct bcm2835_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct bcm2835_chan *c = FUNC5(chan);
	struct device *dev = c->vc.chan.device->dev;

	FUNC0(dev, "Allocating DMA channel %d\n", c->ch);

	/*
	 * Control blocks are 256 bit in length and must start at a 256 bit
	 * (32 byte) aligned address (BCM2835 ARM Peripherals, sec. 4.2.1.1).
	 */
	c->cb_pool = FUNC3(FUNC2(dev), dev,
				     sizeof(struct bcm2835_dma_cb), 32, 0);
	if (!c->cb_pool) {
		FUNC1(dev, "unable to allocate descriptor pool\n");
		return -ENOMEM;
	}

	return FUNC4(c->irq_number, bcm2835_dma_callback,
			   c->irq_flags, "DMA IRQ", c);
}