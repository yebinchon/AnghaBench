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
typedef  scalar_t__ u8 ;
struct mxt_data {scalar_t__* msg_buf; scalar_t__ max_reportid; int update_input; scalar_t__ T5_msg_size; int /*<<< orphan*/  T44_address; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mxt_data*) ; 
 int FUNC4 (struct mxt_data*,scalar_t__*) ; 
 int FUNC5 (struct mxt_data*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(struct mxt_data *data)
{
	struct device *dev = &data->client->dev;
	int ret;
	u8 count, num_left;

	/* Read T44 and T5 together */
	ret = FUNC0(data->client, data->T44_address,
		data->T5_msg_size + 1, data->msg_buf);
	if (ret) {
		FUNC1(dev, "Failed to read T44 and T5 (%d)\n", ret);
		return IRQ_NONE;
	}

	count = data->msg_buf[0];

	/*
	 * This condition may be caused by the CHG line being configured in
	 * Mode 0. It results in unnecessary I2C operations but it is benign.
	 */
	if (count == 0)
		return IRQ_NONE;

	if (count > data->max_reportid) {
		FUNC2(dev, "T44 count %d exceeded max report id\n", count);
		count = data->max_reportid;
	}

	/* Process first message */
	ret = FUNC4(data, data->msg_buf + 1);
	if (ret < 0) {
		FUNC2(dev, "Unexpected invalid message\n");
		return IRQ_NONE;
	}

	num_left = count - 1;

	/* Process remaining messages if necessary */
	if (num_left) {
		ret = FUNC5(data, num_left);
		if (ret < 0)
			goto end;
		else if (ret != num_left)
			FUNC2(dev, "Unexpected invalid message\n");
	}

end:
	if (data->update_input) {
		FUNC3(data);
		data->update_input = false;
	}

	return IRQ_HANDLED;
}