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
struct mlx5_ib_rwq {scalar_t__ wqe_count; int /*<<< orphan*/  log_rq_size; int /*<<< orphan*/  wqe_shift; int /*<<< orphan*/  log_rq_stride; int /*<<< orphan*/  buf_size; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_ib_create_wq {int /*<<< orphan*/  rq_wqe_shift; scalar_t__ rq_wqe_count; } ;
struct ib_wq_init_attr {int max_wr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  log_max_wq_sz ; 

__attribute__((used)) static int FUNC3(struct mlx5_ib_dev *dev,
			    struct ib_wq_init_attr *wq_init_attr,
			    struct mlx5_ib_create_wq *ucmd,
			    struct mlx5_ib_rwq *rwq)
{
	/* Sanity check RQ size before proceeding */
	if (wq_init_attr->max_wr > (1 << FUNC0(dev->mdev, log_max_wq_sz)))
		return -EINVAL;

	if (!ucmd->rq_wqe_count)
		return -EINVAL;

	rwq->wqe_count = ucmd->rq_wqe_count;
	rwq->wqe_shift = ucmd->rq_wqe_shift;
	if (FUNC1(rwq->wqe_count, rwq->wqe_shift, &rwq->buf_size))
		return -EINVAL;

	rwq->log_rq_stride = rwq->wqe_shift;
	rwq->log_rq_size = FUNC2(rwq->wqe_count);
	return 0;
}