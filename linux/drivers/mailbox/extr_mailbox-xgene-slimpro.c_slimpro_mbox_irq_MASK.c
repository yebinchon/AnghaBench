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
struct slimpro_mbox_chan {int /*<<< orphan*/  rx_msg; int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct slimpro_mbox_chan*) ; 
 scalar_t__ FUNC1 (struct slimpro_mbox_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *id)
{
	struct slimpro_mbox_chan *mb_chan = id;

	if (FUNC0(mb_chan))
		FUNC3(mb_chan->chan, 0);

	if (FUNC1(mb_chan))
		FUNC2(mb_chan->chan, mb_chan->rx_msg);

	return IRQ_HANDLED;
}