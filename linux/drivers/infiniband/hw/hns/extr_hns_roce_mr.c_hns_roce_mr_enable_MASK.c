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
struct hns_roce_mr_table {int /*<<< orphan*/  mtpt_table; } ;
struct hns_roce_mr {scalar_t__ type; int enabled; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* hw; struct hns_roce_mr_table mr_table; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* write_mtpt ) (int /*<<< orphan*/ ,struct hns_roce_mr*,unsigned long) ;int (* frmr_write_mtpt ) (int /*<<< orphan*/ ,struct hns_roce_mr*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 scalar_t__ MR_TYPE_FRMR ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,unsigned long) ; 
 int FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct hns_roce_mr*,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct hns_roce_mr*) ; 

__attribute__((used)) static int FUNC11(struct hns_roce_dev *hr_dev,
			      struct hns_roce_mr *mr)
{
	int ret;
	unsigned long mtpt_idx = FUNC8(mr->key);
	struct device *dev = hr_dev->dev;
	struct hns_roce_cmd_mailbox *mailbox;
	struct hns_roce_mr_table *mr_table = &hr_dev->mr_table;

	/* Prepare HEM entry memory */
	ret = FUNC6(hr_dev, &mr_table->mtpt_table, mtpt_idx);
	if (ret)
		return ret;

	/* Allocate mailbox memory */
	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox)) {
		ret = FUNC1(mailbox);
		goto err_table;
	}

	if (mr->type != MR_TYPE_FRMR)
		ret = hr_dev->hw->write_mtpt(mailbox->buf, mr, mtpt_idx);
	else
		ret = hr_dev->hw->frmr_write_mtpt(mailbox->buf, mr);
	if (ret) {
		FUNC2(dev, "Write mtpt fail!\n");
		goto err_page;
	}

	ret = FUNC5(hr_dev, mailbox,
				 mtpt_idx & (hr_dev->caps.num_mtpts - 1));
	if (ret) {
		FUNC2(dev, "SW2HW_MPT failed (%d)\n", ret);
		goto err_page;
	}

	mr->enabled = 1;
	FUNC4(hr_dev, mailbox);

	return 0;

err_page:
	FUNC4(hr_dev, mailbox);

err_table:
	FUNC7(hr_dev, &mr_table->mtpt_table, mtpt_idx);
	return ret;
}