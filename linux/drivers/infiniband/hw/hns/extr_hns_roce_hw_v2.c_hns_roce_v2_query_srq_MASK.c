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
struct ib_srq_attr {int srq_limit; int /*<<< orphan*/  max_sge; scalar_t__ max_wr; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct hns_roce_srq_context {int /*<<< orphan*/  byte_8_limit_wl; } ;
struct hns_roce_srq {int /*<<< orphan*/  max_gs; scalar_t__ max; int /*<<< orphan*/  srqn; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
struct hns_roce_cmd_mailbox {struct hns_roce_srq_context* buf; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_CMD_QUERY_SRQC ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  SRQC_BYTE_8_SRQ_LIMIT_WL_M ; 
 int /*<<< orphan*/  SRQC_BYTE_8_SRQ_LIMIT_WL_S ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_srq_context*,struct hns_roce_srq_context*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct hns_roce_srq* FUNC9 (struct ib_srq*) ; 

__attribute__((used)) static int FUNC10(struct ib_srq *ibsrq, struct ib_srq_attr *attr)
{
	struct hns_roce_dev *hr_dev = FUNC8(ibsrq->device);
	struct hns_roce_srq *srq = FUNC9(ibsrq);
	struct hns_roce_srq_context *srq_context;
	struct hns_roce_cmd_mailbox *mailbox;
	int limit_wl;
	int ret;

	mailbox = FUNC3(hr_dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	srq_context = mailbox->buf;
	ret = FUNC4(hr_dev, 0, mailbox->dma, srq->srqn, 0,
				HNS_ROCE_CMD_QUERY_SRQC,
				HNS_ROCE_CMD_TIMEOUT_MSECS);
	if (ret) {
		FUNC2(hr_dev->dev, "QUERY SRQ cmd process error\n");
		goto out;
	}

	limit_wl = FUNC7(srq_context->byte_8_limit_wl,
				  SRQC_BYTE_8_SRQ_LIMIT_WL_M,
				  SRQC_BYTE_8_SRQ_LIMIT_WL_S);

	attr->srq_limit = limit_wl;
	attr->max_wr    = srq->max - 1;
	attr->max_sge   = srq->max_gs;

	FUNC6(srq_context, mailbox->buf, sizeof(*srq_context));

out:
	FUNC5(hr_dev, mailbox);
	return ret;
}