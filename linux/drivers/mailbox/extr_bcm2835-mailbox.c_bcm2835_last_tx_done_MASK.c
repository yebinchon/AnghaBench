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
struct bcm2835_mbox {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int ARM_MS_FULL ; 
 scalar_t__ MAIL1_STA ; 
 struct bcm2835_mbox* FUNC0 (struct mbox_chan*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct mbox_chan *link)
{
	struct bcm2835_mbox *mbox = FUNC0(link);
	bool ret;

	FUNC2(&mbox->lock);
	ret = !(FUNC1(mbox->regs + MAIL1_STA) & ARM_MS_FULL);
	FUNC3(&mbox->lock);
	return ret;
}