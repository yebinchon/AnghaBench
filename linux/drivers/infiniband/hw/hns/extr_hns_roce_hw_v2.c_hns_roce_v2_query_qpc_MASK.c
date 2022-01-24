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
struct hns_roce_v2_qp_context {int dummy; } ;
struct hns_roce_qp {int /*<<< orphan*/  qpn; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_CMD_QUERY_QPC ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_v2_qp_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct hns_roce_dev *hr_dev,
				 struct hns_roce_qp *hr_qp,
				 struct hns_roce_v2_qp_context *hr_context)
{
	struct hns_roce_cmd_mailbox *mailbox;
	int ret;

	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	ret = FUNC4(hr_dev, 0, mailbox->dma, hr_qp->qpn, 0,
				HNS_ROCE_CMD_QUERY_QPC,
				HNS_ROCE_CMD_TIMEOUT_MSECS);
	if (ret) {
		FUNC2(hr_dev->dev, "QUERY QP cmd process error\n");
		goto out;
	}

	FUNC6(hr_context, mailbox->buf, sizeof(*hr_context));

out:
	FUNC5(hr_dev, mailbox);
	return ret;
}