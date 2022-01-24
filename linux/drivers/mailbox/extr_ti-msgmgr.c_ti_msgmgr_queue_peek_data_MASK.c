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
struct ti_queue_inst {int /*<<< orphan*/  name; scalar_t__ is_tx; } ;
struct ti_msgmgr_inst {struct ti_msgmgr_desc* desc; } ;
struct ti_msgmgr_desc {int dummy; } ;
struct mbox_chan {TYPE_1__* mbox; struct ti_queue_inst* con_priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ti_msgmgr_inst* FUNC1 (struct device*) ; 
 int FUNC2 (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ; 
 scalar_t__ FUNC3 (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ; 

__attribute__((used)) static bool FUNC4(struct mbox_chan *chan)
{
	struct ti_queue_inst *qinst = chan->con_priv;
	struct device *dev = chan->mbox->dev;
	struct ti_msgmgr_inst *inst = FUNC1(dev);
	const struct ti_msgmgr_desc *desc = inst->desc;
	int msg_count;

	if (qinst->is_tx)
		return false;

	if (FUNC3(desc, qinst)) {
		FUNC0(dev, "Error on channel %s\n", qinst->name);
		return false;
	}

	msg_count = FUNC2(desc, qinst);

	return msg_count ? true : false;
}