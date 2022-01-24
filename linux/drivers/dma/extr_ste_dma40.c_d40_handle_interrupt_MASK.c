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
typedef  int u32 ;
struct d40_interrupt_lookup {int offset; int /*<<< orphan*/  is_error; scalar_t__ clr; scalar_t__ src; } ;
struct d40_chan {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int il_size; struct d40_interrupt_lookup* il; } ;
struct d40_base {int* regs_interrupt; int /*<<< orphan*/  interrupt_lock; int /*<<< orphan*/  dev; scalar_t__ virtbase; struct d40_chan** lookup_log_chans; struct d40_chan** lookup_phy_chans; TYPE_1__ gen_dmac; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BITS_PER_LONG ; 
 int D40_PHY_CHAN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct d40_chan*) ; 
 long FUNC3 (unsigned long*,int,long) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	int i;
	u32 idx;
	u32 row;
	long chan = -1;
	struct d40_chan *d40c;
	unsigned long flags;
	struct d40_base *base = data;
	u32 *regs = base->regs_interrupt;
	struct d40_interrupt_lookup *il = base->gen_dmac.il;
	u32 il_size = base->gen_dmac.il_size;

	FUNC6(&base->interrupt_lock, flags);

	/* Read interrupt status of both logical and physical channels */
	for (i = 0; i < il_size; i++)
		regs[i] = FUNC4(base->virtbase + il[i].src);

	for (;;) {

		chan = FUNC3((unsigned long *)regs,
				     BITS_PER_LONG * il_size, chan + 1);

		/* No more set bits found? */
		if (chan == BITS_PER_LONG * il_size)
			break;

		row = chan / BITS_PER_LONG;
		idx = chan & (BITS_PER_LONG - 1);

		if (il[row].offset == D40_PHY_CHAN)
			d40c = base->lookup_phy_chans[idx];
		else
			d40c = base->lookup_log_chans[il[row].offset + idx];

		if (!d40c) {
			/*
			 * No error because this can happen if something else
			 * in the system is using the channel.
			 */
			continue;
		}

		/* ACK interrupt */
		FUNC9(FUNC0(idx), base->virtbase + il[row].clr);

		FUNC5(&d40c->lock);

		if (!il[row].is_error)
			FUNC2(d40c);
		else
			FUNC1(base->dev, "IRQ chan: %ld offset %d idx %d\n",
				chan, il[row].offset, idx);

		FUNC7(&d40c->lock);
	}

	FUNC8(&base->interrupt_lock, flags);

	return IRQ_HANDLED;
}