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
struct mbox_chan {int dummy; } ;
struct altera_mbox {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; scalar_t__ intr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  altera_mbox_tx_interrupt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct altera_mbox* FUNC1 (struct mbox_chan*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mbox_chan *chan)
{
	int ret;
	struct altera_mbox *mbox = FUNC1(chan);

	if (mbox->intr_mode) {
		ret = FUNC2(mbox->irq, altera_mbox_tx_interrupt, 0,
				  DRIVER_NAME, chan);
		if (FUNC3(ret)) {
			FUNC0(mbox->dev,
				"failed to register mailbox interrupt:%d\n",
				ret);
			return ret;
		}
	}

	return 0;
}