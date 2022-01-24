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
struct altera_mbox {scalar_t__ is_sender; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mbox_chan*) ; 
 int FUNC1 (struct mbox_chan*) ; 
 struct altera_mbox* FUNC2 (struct mbox_chan*) ; 

__attribute__((used)) static int FUNC3(struct mbox_chan *chan)
{
	struct altera_mbox *mbox = FUNC2(chan);
	int ret = 0;

	if (!mbox)
		return -EINVAL;

	if (mbox->is_sender)
		ret = FUNC1(chan);
	else
		ret = FUNC0(chan);

	return ret;
}