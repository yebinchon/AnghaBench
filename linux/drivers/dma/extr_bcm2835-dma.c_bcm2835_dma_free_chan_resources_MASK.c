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
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ chan; } ;
struct bcm2835_chan {int /*<<< orphan*/  ch; TYPE_3__ vc; int /*<<< orphan*/  cb_pool; int /*<<< orphan*/  irq_number; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bcm2835_chan*) ; 
 struct bcm2835_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct bcm2835_chan *c = FUNC3(chan);

	FUNC4(&c->vc);
	FUNC2(c->irq_number, c);
	FUNC1(c->cb_pool);

	FUNC0(c->vc.chan.device->dev, "Freeing DMA channel %u\n", c->ch);
}