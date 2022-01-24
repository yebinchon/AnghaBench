#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct elan_tp_data {TYPE_2__* client; TYPE_1__* ops; int /*<<< orphan*/  fw_completion; scalar_t__ in_fw_update; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int (* get_report ) (TYPE_2__*,int*) ;} ;

/* Variables and functions */
 int ETP_MAX_REPORT_LEN ; 
#define  ETP_REPORT_ID 129 
 size_t ETP_REPORT_ID_OFFSET ; 
#define  ETP_TP_REPORT_ID 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct elan_tp_data*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct elan_tp_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct elan_tp_data *data = dev_id;
	struct device *dev = &data->client->dev;
	int error;
	u8 report[ETP_MAX_REPORT_LEN];

	/*
	 * When device is connected to i2c bus, when all IAP page writes
	 * complete, the driver will receive interrupt and must read
	 * 0000 to confirm that IAP is finished.
	*/
	if (data->in_fw_update) {
		FUNC0(&data->fw_completion);
		goto out;
	}

	error = data->ops->get_report(data->client, report);
	if (error)
		goto out;

	FUNC4(dev, 0);

	switch (report[ETP_REPORT_ID_OFFSET]) {
	case ETP_REPORT_ID:
		FUNC2(data, report);
		break;
	case ETP_TP_REPORT_ID:
		FUNC3(data, report);
		break;
	default:
		FUNC1(dev, "invalid report id data (%x)\n",
			report[ETP_REPORT_ID_OFFSET]);
	}

out:
	return IRQ_HANDLED;
}