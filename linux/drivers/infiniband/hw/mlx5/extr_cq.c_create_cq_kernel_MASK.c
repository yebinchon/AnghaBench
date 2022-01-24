#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {TYPE_5__* mdev; } ;
struct TYPE_17__ {scalar_t__ db; } ;
struct TYPE_15__ {int npages; scalar_t__ page_shift; } ;
struct TYPE_18__ {TYPE_4__ frag_buf; } ;
struct TYPE_12__ {int cqe_sz; scalar_t__ arm_db; scalar_t__ set_ci_db; } ;
struct mlx5_ib_cq {TYPE_6__ db; TYPE_9__ buf; TYPE_1__ mcq; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_14__ {TYPE_2__* uar; } ;
struct TYPE_16__ {TYPE_3__ priv; } ;
struct TYPE_13__ {int index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_ib_dev*,TYPE_9__*,int,int) ; 
 int /*<<< orphan*/ * cq_context ; 
 int /*<<< orphan*/  create_cq_in ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_cq*,TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_page_size ; 
 int FUNC8 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq,
			    int entries, int cqe_size,
			    u32 **cqb, int *index, int *inlen)
{
	__be64 *pas;
	void *cqc;
	int err;

	err = FUNC8(dev->mdev, &cq->db);
	if (err)
		return err;

	cq->mcq.set_ci_db  = cq->db.db;
	cq->mcq.arm_db     = cq->db.db + 1;
	cq->mcq.cqe_sz = cqe_size;

	err = FUNC4(dev, &cq->buf, entries, cqe_size);
	if (err)
		goto err_db;

	FUNC6(cq, &cq->buf);

	*inlen = FUNC3(create_cq_in) +
		 FUNC1(create_cq_in, pas[0]) *
		 cq->buf.frag_buf.npages;
	*cqb = FUNC7(*inlen, GFP_KERNEL);
	if (!*cqb) {
		err = -ENOMEM;
		goto err_buf;
	}

	pas = (__be64 *)FUNC0(create_cq_in, *cqb, pas);
	FUNC10(&cq->buf.frag_buf, pas);

	cqc = FUNC0(create_cq_in, *cqb, cq_context);
	FUNC2(cqc, cqc, log_page_size,
		 cq->buf.frag_buf.page_shift -
		 MLX5_ADAPTER_PAGE_SHIFT);

	*index = dev->mdev->priv.uar->index;

	return 0;

err_buf:
	FUNC5(dev, &cq->buf);

err_db:
	FUNC9(dev->mdev, &cq->db);
	return err;
}