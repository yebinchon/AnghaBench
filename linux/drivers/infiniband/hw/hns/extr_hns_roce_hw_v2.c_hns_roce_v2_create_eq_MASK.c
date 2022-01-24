#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hns_roce_eq {TYPE_2__* buf_list; int /*<<< orphan*/  eqn; } ;
struct TYPE_4__ {int eqe_buf_pg_sz; int /*<<< orphan*/  eqe_hop_num; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;
struct hns_roce_buf_list {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hns_roce_cmd_mailbox* FUNC5 (struct hns_roce_dev*) ; 
 int FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*,struct hns_roce_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int FUNC9 (struct hns_roce_dev*,struct hns_roce_eq*) ; 
 int /*<<< orphan*/  FUNC10 (struct hns_roce_dev*,struct hns_roce_eq*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct hns_roce_dev *hr_dev,
				 struct hns_roce_eq *eq,
				 unsigned int eq_cmd)
{
	struct device *dev = hr_dev->dev;
	struct hns_roce_cmd_mailbox *mailbox;
	u32 buf_chk_sz = 0;
	int ret;

	/* Allocate mailbox memory */
	mailbox = FUNC5(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	if (!hr_dev->caps.eqe_hop_num) {
		buf_chk_sz = 1 << (hr_dev->caps.eqe_buf_pg_sz + PAGE_SHIFT);

		eq->buf_list = FUNC12(sizeof(struct hns_roce_buf_list),
				       GFP_KERNEL);
		if (!eq->buf_list) {
			ret = -ENOMEM;
			goto free_cmd_mbox;
		}

		eq->buf_list->buf = FUNC3(dev, buf_chk_sz,
						       &(eq->buf_list->map),
						       GFP_KERNEL);
		if (!eq->buf_list->buf) {
			ret = -ENOMEM;
			goto err_alloc_buf;
		}

	} else {
		ret = FUNC9(hr_dev, eq);
		if (ret) {
			ret = -ENOMEM;
			goto free_cmd_mbox;
		}
	}

	FUNC7(hr_dev, eq, mailbox->buf);

	ret = FUNC6(hr_dev, mailbox->dma, 0, eq->eqn, 0,
				eq_cmd, HNS_ROCE_CMD_TIMEOUT_MSECS);
	if (ret) {
		FUNC2(dev, "[mailbox cmd] create eqc failed.\n");
		goto err_cmd_mbox;
	}

	FUNC8(hr_dev, mailbox);

	return 0;

err_cmd_mbox:
	if (!hr_dev->caps.eqe_hop_num)
		FUNC4(dev, buf_chk_sz, eq->buf_list->buf,
				  eq->buf_list->map);
	else {
		FUNC10(hr_dev, eq);
		goto free_cmd_mbox;
	}

err_alloc_buf:
	FUNC11(eq->buf_list);

free_cmd_mbox:
	FUNC8(hr_dev, mailbox);

	return ret;
}