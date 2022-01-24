#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nbpf_device {TYPE_1__ dma_dev; } ;
struct nbpf_channel {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbpf_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbpf_channel*) ; 
 scalar_t__ FUNC3 (struct nbpf_device*) ; 
 struct nbpf_channel* FUNC4 (struct nbpf_device*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	struct nbpf_device *nbpf = dev;
	u32 error = FUNC3(nbpf);

	FUNC0(nbpf->dma_dev.dev, "DMA error IRQ %u\n", irq);

	if (!error)
		return IRQ_NONE;

	do {
		struct nbpf_channel *chan = FUNC4(nbpf, error);
		/* On error: abort all queued transfers, no callback */
		FUNC2(chan);
		FUNC1(chan);
		error = FUNC3(nbpf);
	} while (error);

	return IRQ_HANDLED;
}