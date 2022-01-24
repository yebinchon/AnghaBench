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
struct hns_roce_v2_cq_context {int dummy; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  dma; struct hns_roce_v2_cq_context* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_CMD_QUERY_CQC ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (int*,struct hns_roce_v2_cq_context*,int) ; 

int FUNC7(struct hns_roce_dev *hr_dev, u32 cqn,
			       int *buffer)
{
	struct hns_roce_v2_cq_context *cq_context;
	struct hns_roce_cmd_mailbox *mailbox;
	int ret;

	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	cq_context = mailbox->buf;
	ret = FUNC4(hr_dev, 0, mailbox->dma, cqn, 0,
				HNS_ROCE_CMD_QUERY_CQC,
				HNS_ROCE_CMD_TIMEOUT_MSECS);
	if (ret) {
		FUNC2(hr_dev->dev, "QUERY cqc cmd process error\n");
		goto err_mailbox;
	}

	FUNC6(buffer, cq_context, sizeof(*cq_context));

err_mailbox:
	FUNC5(hr_dev, mailbox);

	return ret;
}