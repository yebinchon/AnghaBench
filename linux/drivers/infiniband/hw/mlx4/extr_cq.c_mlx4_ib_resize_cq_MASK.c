#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx4_mtt {int dummy; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct mlx4_ib_cq_buf {struct mlx4_mtt mtt; } ;
struct TYPE_7__ {int cqe; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  resize_mutex; int /*<<< orphan*/ * resize_umem; TYPE_5__* resize_buf; int /*<<< orphan*/  lock; TYPE_2__ ibcq; struct mlx4_ib_cq_buf buf; int /*<<< orphan*/ * umem; int /*<<< orphan*/  mcq; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int cqe; scalar_t__ uobject; int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int cqe; struct mlx4_ib_cq_buf buf; } ;
struct TYPE_6__ {int max_cqes; } ;
struct TYPE_8__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (struct mlx4_ib_dev*,struct mlx4_ib_cq*,int) ; 
 int FUNC3 (struct mlx4_ib_dev*,struct mlx4_ib_cq*,int,struct ib_udata*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int,struct mlx4_mtt*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_cq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,struct mlx4_ib_cq_buf*,int) ; 
 int FUNC7 (struct mlx4_ib_cq*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct mlx4_mtt*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_cq* FUNC14 (struct ib_cq*) ; 
 struct mlx4_ib_dev* FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct ib_cq *ibcq, int entries, struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC15(ibcq->device);
	struct mlx4_ib_cq *cq = FUNC14(ibcq);
	struct mlx4_mtt mtt;
	int outst_cqe;
	int err;

	FUNC9(&cq->resize_mutex);
	if (entries < 1 || entries > dev->dev->caps.max_cqes) {
		err = -EINVAL;
		goto out;
	}

	entries = FUNC11(entries + 1);
	if (entries == ibcq->cqe + 1) {
		err = 0;
		goto out;
	}

	if (entries > dev->dev->caps.max_cqes + 1) {
		err = -EINVAL;
		goto out;
	}

	if (ibcq->uobject) {
		err = FUNC3(dev, cq, entries, udata);
		if (err)
			goto out;
	} else {
		/* Can't be smaller than the number of outstanding CQEs */
		outst_cqe = FUNC7(cq);
		if (entries < outst_cqe + 1) {
			err = -EINVAL;
			goto out;
		}

		err = FUNC2(dev, cq, entries);
		if (err)
			goto out;
	}

	mtt = cq->buf.mtt;

	err = FUNC4(dev->dev, &cq->mcq, entries, &cq->resize_buf->buf.mtt);
	if (err)
		goto err_buf;

	FUNC8(dev->dev, &mtt);
	if (ibcq->uobject) {
		cq->buf      = cq->resize_buf->buf;
		cq->ibcq.cqe = cq->resize_buf->cqe;
		FUNC0(cq->umem);
		cq->umem     = cq->resize_umem;

		FUNC1(cq->resize_buf);
		cq->resize_buf = NULL;
		cq->resize_umem = NULL;
	} else {
		struct mlx4_ib_cq_buf tmp_buf;
		int tmp_cqe = 0;

		FUNC12(&cq->lock);
		if (cq->resize_buf) {
			FUNC5(cq);
			tmp_buf = cq->buf;
			tmp_cqe = cq->ibcq.cqe;
			cq->buf      = cq->resize_buf->buf;
			cq->ibcq.cqe = cq->resize_buf->cqe;

			FUNC1(cq->resize_buf);
			cq->resize_buf = NULL;
		}
		FUNC13(&cq->lock);

		if (tmp_cqe)
			FUNC6(dev, &tmp_buf, tmp_cqe);
	}

	goto out;

err_buf:
	FUNC8(dev->dev, &cq->resize_buf->buf.mtt);
	if (!ibcq->uobject)
		FUNC6(dev, &cq->resize_buf->buf,
				    cq->resize_buf->cqe);

	FUNC1(cq->resize_buf);
	cq->resize_buf = NULL;

	FUNC0(cq->resize_umem);
	cq->resize_umem = NULL;
out:
	FUNC10(&cq->resize_mutex);

	return err;
}