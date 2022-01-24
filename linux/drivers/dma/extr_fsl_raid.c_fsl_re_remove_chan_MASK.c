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
struct fsl_re_chan {int /*<<< orphan*/  oub_phys_addr; int /*<<< orphan*/  oub_ring_virt_addr; TYPE_1__* re_dev; int /*<<< orphan*/  inb_phys_addr; int /*<<< orphan*/  inb_ring_virt_addr; int /*<<< orphan*/  irqtask; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_desc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fsl_re_chan *chan)
{
	FUNC1(&chan->irqtask);

	FUNC0(chan->re_dev->hw_desc_pool, chan->inb_ring_virt_addr,
		      chan->inb_phys_addr);

	FUNC0(chan->re_dev->hw_desc_pool, chan->oub_ring_virt_addr,
		      chan->oub_phys_addr);
}