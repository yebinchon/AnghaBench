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
struct hns_roce_mw {int enabled; int /*<<< orphan*/  rkey; } ;
struct hns_roce_mr_table {int /*<<< orphan*/  mtpt_table; } ;
struct TYPE_4__ {int num_mtpts; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* hw; struct device* dev; struct hns_roce_mr_table mr_table; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* mw_write_mtpt ) (int /*<<< orphan*/ ,struct hns_roce_mw*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*,unsigned long) ; 
 int FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct hns_roce_mw*) ; 

__attribute__((used)) static int FUNC10(struct hns_roce_dev *hr_dev,
			      struct hns_roce_mw *mw)
{
	struct hns_roce_mr_table *mr_table = &hr_dev->mr_table;
	struct hns_roce_cmd_mailbox *mailbox;
	struct device *dev = hr_dev->dev;
	unsigned long mtpt_idx = FUNC8(mw->rkey);
	int ret;

	/* prepare HEM entry memory */
	ret = FUNC6(hr_dev, &mr_table->mtpt_table, mtpt_idx);
	if (ret)
		return ret;

	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox)) {
		ret = FUNC1(mailbox);
		goto err_table;
	}

	ret = hr_dev->hw->mw_write_mtpt(mailbox->buf, mw);
	if (ret) {
		FUNC2(dev, "MW write mtpt fail!\n");
		goto err_page;
	}

	ret = FUNC5(hr_dev, mailbox,
				 mtpt_idx & (hr_dev->caps.num_mtpts - 1));
	if (ret) {
		FUNC2(dev, "MW sw2hw_mpt failed (%d)\n", ret);
		goto err_page;
	}

	mw->enabled = 1;

	FUNC4(hr_dev, mailbox);

	return 0;

err_page:
	FUNC4(hr_dev, mailbox);

err_table:
	FUNC7(hr_dev, &mr_table->mtpt_table, mtpt_idx);

	return ret;
}