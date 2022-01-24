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
struct altera_mbox {scalar_t__ mbox_base; } ;

/* Variables and functions */
 scalar_t__ MAILBOX_CMD_REG ; 
 scalar_t__ MAILBOX_PTR_REG ; 
 size_t MBOX_CMD ; 
 size_t MBOX_PTR ; 
 scalar_t__ FUNC0 (struct altera_mbox*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_chan*,void*) ; 
 struct altera_mbox* FUNC2 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mbox_chan *chan)
{
	struct altera_mbox *mbox = FUNC2(chan);
	u32 data[2];

	if (FUNC0(mbox)) {
		data[MBOX_PTR] =
			FUNC3(mbox->mbox_base + MAILBOX_PTR_REG);
		data[MBOX_CMD] =
			FUNC3(mbox->mbox_base + MAILBOX_CMD_REG);
		FUNC1(chan, (void *)data);
	}
}