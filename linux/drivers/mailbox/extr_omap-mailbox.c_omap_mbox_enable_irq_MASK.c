#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct omap_mbox {int dummy; } ;
struct mbox_chan {int dummy; } ;
typedef  int /*<<< orphan*/  omap_mbox_irq_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 struct omap_mbox* FUNC2 (struct mbox_chan*) ; 

void FUNC3(struct mbox_chan *chan, omap_mbox_irq_t irq)
{
	struct omap_mbox *mbox = FUNC2(chan);

	if (FUNC0(!mbox))
		return;

	FUNC1(mbox, irq);
}