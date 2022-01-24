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
struct mthca_tavor_srq_context {int /*<<< orphan*/  limit_watermark; } ;
struct mthca_srq {int /*<<< orphan*/  max_gs; scalar_t__ max; int /*<<< orphan*/  srqn; } ;
struct mthca_mailbox {struct mthca_tavor_srq_context* buf; } ;
struct mthca_dev {int dummy; } ;
struct mthca_arbel_srq_context {int /*<<< orphan*/  limit_watermark; } ;
struct ib_srq_attr {int /*<<< orphan*/  max_sge; scalar_t__ max_wr; void* srq_limit; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int FUNC1 (struct mthca_mailbox*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,struct mthca_mailbox*) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,struct mthca_mailbox*) ; 
 scalar_t__ FUNC6 (struct mthca_dev*) ; 
 struct mthca_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mthca_srq* FUNC8 (struct ib_srq*) ; 

int FUNC9(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
	struct mthca_dev *dev = FUNC7(ibsrq->device);
	struct mthca_srq *srq = FUNC8(ibsrq);
	struct mthca_mailbox *mailbox;
	struct mthca_arbel_srq_context *arbel_ctx;
	struct mthca_tavor_srq_context *tavor_ctx;
	int err;

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	err = FUNC3(dev, srq->srqn, mailbox);
	if (err)
		goto out;

	if (FUNC6(dev)) {
		arbel_ctx = mailbox->buf;
		srq_attr->srq_limit = FUNC2(arbel_ctx->limit_watermark);
	} else {
		tavor_ctx = mailbox->buf;
		srq_attr->srq_limit = FUNC2(tavor_ctx->limit_watermark);
	}

	srq_attr->max_wr  = srq->max - 1;
	srq_attr->max_sge = srq->max_gs;

out:
	FUNC5(dev, mailbox);

	return err;
}