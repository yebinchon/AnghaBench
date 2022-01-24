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
struct mbox_chan {int txdone_method; TYPE_1__* mbox; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TXDONE_BY_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_chan*,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct mbox_chan *chan, int r)
{
	if (FUNC2(!(chan->txdone_method & TXDONE_BY_IRQ))) {
		FUNC0(chan->mbox->dev,
		       "Controller can't run the TX ticker\n");
		return;
	}

	FUNC1(chan, r);
}