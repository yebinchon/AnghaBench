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
struct omap_mbox {scalar_t__ send_no_irq; } ;
struct mbox_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct omap_mbox* FUNC0 (struct mbox_chan*) ; 
 int FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct mbox_chan *chan, void *data)
{
	struct omap_mbox *mbox = FUNC0(chan);
	int ret;
	u32 msg = FUNC3(data);

	if (!mbox)
		return -EINVAL;

	if (mbox->send_no_irq)
		ret = FUNC2(mbox, msg);
	else
		ret = FUNC1(mbox, msg);

	return ret;
}