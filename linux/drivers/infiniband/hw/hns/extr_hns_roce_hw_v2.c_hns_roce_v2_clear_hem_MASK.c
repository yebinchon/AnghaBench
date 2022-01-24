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
typedef  int u16 ;
struct hns_roce_hem_table {int type; } ;
struct hns_roce_dev {struct device* dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  dma; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  HEM_TYPE_CQC 134 
#define  HEM_TYPE_CQC_TIMER 133 
#define  HEM_TYPE_MTPT 132 
#define  HEM_TYPE_QPC 131 
#define  HEM_TYPE_QPC_TIMER 130 
#define  HEM_TYPE_SCCC 129 
#define  HEM_TYPE_SRQC 128 
 int HNS_ROCE_CMD_DESTROY_CQC_BT0 ; 
 int HNS_ROCE_CMD_DESTROY_MPT_BT0 ; 
 int HNS_ROCE_CMD_DESTROY_QPC_BT0 ; 
 int HNS_ROCE_CMD_DESTROY_SRQC_BT0 ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int) ; 
 int FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev,
				 struct hns_roce_hem_table *table, int obj,
				 int step_idx)
{
	struct device *dev = hr_dev->dev;
	struct hns_roce_cmd_mailbox *mailbox;
	int ret;
	u16 op = 0xff;

	if (!FUNC4(hr_dev, table->type))
		return 0;

	switch (table->type) {
	case HEM_TYPE_QPC:
		op = HNS_ROCE_CMD_DESTROY_QPC_BT0;
		break;
	case HEM_TYPE_MTPT:
		op = HNS_ROCE_CMD_DESTROY_MPT_BT0;
		break;
	case HEM_TYPE_CQC:
		op = HNS_ROCE_CMD_DESTROY_CQC_BT0;
		break;
	case HEM_TYPE_SCCC:
	case HEM_TYPE_QPC_TIMER:
	case HEM_TYPE_CQC_TIMER:
		break;
	case HEM_TYPE_SRQC:
		op = HNS_ROCE_CMD_DESTROY_SRQC_BT0;
		break;
	default:
		FUNC2(dev, "Table %d not to be destroyed by mailbox!\n",
			 table->type);
		return 0;
	}

	if (table->type == HEM_TYPE_SCCC ||
	    table->type == HEM_TYPE_QPC_TIMER ||
	    table->type == HEM_TYPE_CQC_TIMER)
		return 0;

	op += step_idx;

	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	/* configure the tag and op */
	ret = FUNC5(hr_dev, 0, mailbox->dma, obj, 0, op,
				HNS_ROCE_CMD_TIMEOUT_MSECS);

	FUNC6(hr_dev, mailbox);
	return ret;
}