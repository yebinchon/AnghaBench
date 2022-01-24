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
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct hns_roce_srq_context {int /*<<< orphan*/  byte_8_limit_wl; } ;
struct hns_roce_srq {scalar_t__ max; int /*<<< orphan*/  srqn; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  dma; struct hns_roce_srq_context* buf; } ;
typedef  enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_MODIFY_SRQC ; 
 int /*<<< orphan*/  HNS_ROCE_CMD_TIMEOUT_MSECS ; 
 int IB_SRQ_LIMIT ; 
 scalar_t__ FUNC0 (struct hns_roce_cmd_mailbox*) ; 
 int FUNC1 (struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  SRQC_BYTE_8_SRQ_LIMIT_WL_M ; 
 int /*<<< orphan*/  SRQC_BYTE_8_SRQ_LIMIT_WL_S ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_srq_context*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct hns_roce_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct hns_roce_srq* FUNC9 (struct ib_srq*) ; 

__attribute__((used)) static int FUNC10(struct ib_srq *ibsrq,
				  struct ib_srq_attr *srq_attr,
				  enum ib_srq_attr_mask srq_attr_mask,
				  struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC8(ibsrq->device);
	struct hns_roce_srq *srq = FUNC9(ibsrq);
	struct hns_roce_srq_context *srq_context;
	struct hns_roce_srq_context *srqc_mask;
	struct hns_roce_cmd_mailbox *mailbox;
	int ret;

	if (srq_attr_mask & IB_SRQ_LIMIT) {
		if (srq_attr->srq_limit >= srq->max)
			return -EINVAL;

		mailbox = FUNC3(hr_dev);
		if (FUNC0(mailbox))
			return FUNC1(mailbox);

		srq_context = mailbox->buf;
		srqc_mask = (struct hns_roce_srq_context *)mailbox->buf + 1;

		FUNC6(srqc_mask, 0xff, sizeof(*srqc_mask));

		FUNC7(srq_context->byte_8_limit_wl,
			       SRQC_BYTE_8_SRQ_LIMIT_WL_M,
			       SRQC_BYTE_8_SRQ_LIMIT_WL_S, srq_attr->srq_limit);
		FUNC7(srqc_mask->byte_8_limit_wl,
			       SRQC_BYTE_8_SRQ_LIMIT_WL_M,
			       SRQC_BYTE_8_SRQ_LIMIT_WL_S, 0);

		ret = FUNC4(hr_dev, mailbox->dma, 0, srq->srqn, 0,
					HNS_ROCE_CMD_MODIFY_SRQC,
					HNS_ROCE_CMD_TIMEOUT_MSECS);
		FUNC5(hr_dev, mailbox);
		if (ret) {
			FUNC2(hr_dev->dev,
				"MODIFY SRQ Failed to cmd mailbox.\n");
			return ret;
		}
	}

	return 0;
}