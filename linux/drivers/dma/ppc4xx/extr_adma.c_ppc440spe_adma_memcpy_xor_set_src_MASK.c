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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct ppc440spe_adma_desc_slot {struct ppc440spe_adma_desc_slot* group_head; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ppc440spe_adma_desc_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ppc440spe_adma_chan* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
		struct ppc440spe_adma_desc_slot *sw_desc,
		dma_addr_t addr, int index)
{
	struct ppc440spe_adma_chan *chan;

	chan = FUNC2(sw_desc->async_tx.chan);
	sw_desc = sw_desc->group_head;

	if (FUNC0(sw_desc))
		FUNC1(sw_desc, chan, index, 0, addr);
}