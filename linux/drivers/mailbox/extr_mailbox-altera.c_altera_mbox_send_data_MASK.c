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
typedef  int /*<<< orphan*/  u32 ;
struct mbox_chan {int dummy; } ;
struct altera_mbox {scalar_t__ mbox_base; scalar_t__ intr_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  is_sender; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MAILBOX_CMD_REG ; 
 scalar_t__ MAILBOX_PTR_REG ; 
 size_t MBOX_CMD ; 
 size_t MBOX_PTR ; 
 scalar_t__ FUNC0 (struct altera_mbox*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_mbox*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct altera_mbox* FUNC3 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mbox_chan *chan, void *data)
{
	struct altera_mbox *mbox = FUNC3(chan);
	u32 *udata = (u32 *)data;

	if (!mbox || !data)
		return -EINVAL;
	if (!mbox->is_sender) {
		FUNC2(mbox->dev,
			 "failed to send. This is receiver mailbox.\n");
		return -EINVAL;
	}

	if (FUNC0(mbox))
		return -EBUSY;

	/* Enable interrupt before send */
	if (mbox->intr_mode)
		FUNC1(mbox, true);

	/* Pointer register must write before command register */
	FUNC4(udata[MBOX_PTR], mbox->mbox_base + MAILBOX_PTR_REG);
	FUNC4(udata[MBOX_CMD], mbox->mbox_base + MAILBOX_CMD_REG);

	return 0;
}