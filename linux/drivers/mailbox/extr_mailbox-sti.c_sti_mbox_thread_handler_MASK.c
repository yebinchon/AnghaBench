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
struct sti_mbox_pdata {unsigned int num_inst; } ;
struct sti_mbox_device {int /*<<< orphan*/  dev; } ;
struct mbox_chan {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct sti_mbox_pdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbox_chan*) ; 
 struct mbox_chan* FUNC4 (struct sti_mbox_device*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct sti_mbox_device *mdev = data;
	struct sti_mbox_pdata *pdata = FUNC0(mdev->dev);
	struct mbox_chan *chan;
	unsigned int instance;

	for (instance = 0; instance < pdata->num_inst; instance++) {
keep_looking:
		chan = FUNC4(mdev, instance);
		if (!chan)
			continue;

		FUNC1(chan, NULL);
		FUNC2(chan);
		FUNC3(chan);
		goto keep_looking;
	}

	return IRQ_HANDLED;
}