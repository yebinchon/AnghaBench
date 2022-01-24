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
struct mthca_srq {scalar_t__ max; int max_gs; int srqn; scalar_t__ db_index; int refcount; int last_free; scalar_t__ first_free; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  db; int /*<<< orphan*/  wqe_shift; scalar_t__ counter; } ;
struct mthca_pd {int dummy; } ;
struct mthca_next_seg {int dummy; } ;
struct mthca_mailbox {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; int /*<<< orphan*/  srq; } ;
struct TYPE_3__ {scalar_t__ max_srq_wqes; int max_srq_sge; int max_desc_sz; int num_srqs; } ;
struct mthca_dev {TYPE_2__ srq_table; TYPE_1__ limits; } ;
struct mthca_data_seg {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ max_wr; int max_sge; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  MTHCA_DB_TYPE_SRQ ; 
 int FUNC1 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned long,scalar_t__) ; 
 int FUNC5 (struct mthca_dev*,struct mthca_mailbox*,int) ; 
 int FUNC6 (struct mthca_dev*,struct mthca_mailbox*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct mthca_mailbox* FUNC9 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mthca_dev*,struct mthca_pd*,struct mthca_srq*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,struct mthca_pd*,struct mthca_srq*,int /*<<< orphan*/ ,struct ib_udata*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,struct mthca_srq*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mthca_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC16 (struct mthca_dev*,struct mthca_srq*) ; 
 scalar_t__ FUNC17 (struct mthca_dev*) ; 
 int FUNC18 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mthca_dev*,struct mthca_pd*,struct mthca_srq*,int /*<<< orphan*/ ,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC21 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

int FUNC27(struct mthca_dev *dev, struct mthca_pd *pd,
		    struct ib_srq_attr *attr, struct mthca_srq *srq,
		    struct ib_udata *udata)
{
	struct mthca_mailbox *mailbox;
	int ds;
	int err;

	/* Sanity check SRQ size before proceeding */
	if (attr->max_wr  > dev->limits.max_srq_wqes ||
	    attr->max_sge > dev->limits.max_srq_sge)
		return -EINVAL;

	srq->max      = attr->max_wr;
	srq->max_gs   = attr->max_sge;
	srq->counter  = 0;

	if (FUNC17(dev))
		srq->max = FUNC23(srq->max + 1);
	else
		srq->max = srq->max + 1;

	ds = FUNC4(64UL,
		 FUNC23(sizeof (struct mthca_next_seg) +
				    srq->max_gs * sizeof (struct mthca_data_seg)));

	if (!FUNC17(dev) && (ds > dev->limits.max_desc_sz))
		return -EINVAL;

	srq->wqe_shift = FUNC2(ds);

	srq->srqn = FUNC7(&dev->srq_table.alloc);
	if (srq->srqn == -1)
		return -ENOMEM;

	if (FUNC17(dev)) {
		err = FUNC18(dev, dev->srq_table.table, srq->srqn);
		if (err)
			goto err_out;

		if (!udata) {
			srq->db_index = FUNC8(dev, MTHCA_DB_TYPE_SRQ,
						       srq->srqn, &srq->db);
			if (srq->db_index < 0) {
				err = -ENOMEM;
				goto err_out_icm;
			}
		}
	}

	mailbox = FUNC9(dev, GFP_KERNEL);
	if (FUNC0(mailbox)) {
		err = FUNC1(mailbox);
		goto err_out_db;
	}

	err = FUNC10(dev, pd, srq, udata);
	if (err)
		goto err_out_mailbox;

	FUNC24(&srq->lock);
	srq->refcount = 1;
	FUNC3(&srq->wait);
	FUNC22(&srq->mutex);

	if (FUNC17(dev))
		FUNC11(dev, pd, srq, mailbox->buf, udata);
	else
		FUNC20(dev, pd, srq, mailbox->buf, udata);

	err = FUNC6(dev, mailbox, srq->srqn);

	if (err) {
		FUNC21(dev, "SW2HW_SRQ failed (%d)\n", err);
		goto err_out_free_buf;
	}

	FUNC25(&dev->srq_table.lock);
	if (FUNC12(&dev->srq_table.srq,
			    srq->srqn & (dev->limits.num_srqs - 1),
			    srq)) {
		FUNC26(&dev->srq_table.lock);
		goto err_out_free_srq;
	}
	FUNC26(&dev->srq_table.lock);

	FUNC15(dev, mailbox);

	srq->first_free = 0;
	srq->last_free  = srq->max - 1;

	attr->max_wr    = srq->max - 1;
	attr->max_sge   = srq->max_gs;

	return 0;

err_out_free_srq:
	err = FUNC5(dev, mailbox, srq->srqn);
	if (err)
		FUNC21(dev, "HW2SW_SRQ failed (%d)\n", err);

err_out_free_buf:
	if (!udata)
		FUNC16(dev, srq);

err_out_mailbox:
	FUNC15(dev, mailbox);

err_out_db:
	if (!udata && FUNC17(dev))
		FUNC14(dev, MTHCA_DB_TYPE_SRQ, srq->db_index);

err_out_icm:
	FUNC19(dev, dev->srq_table.table, srq->srqn);

err_out:
	FUNC13(&dev->srq_table.alloc, srq->srqn);

	return err;
}