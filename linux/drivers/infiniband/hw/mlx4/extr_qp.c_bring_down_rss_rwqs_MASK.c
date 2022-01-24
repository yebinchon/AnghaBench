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
struct mlx4_ib_qp {int rss_usecnt; int /*<<< orphan*/  mutex; } ;
struct ib_wq {scalar_t__ state; int /*<<< orphan*/  wq_num; } ;
struct ib_udata {int dummy; } ;
struct ib_rwq_ind_table {int log_ind_tbl_size; struct ib_wq** ind_tbl; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_WQS_RDY ; 
 int /*<<< orphan*/  IB_WQS_RESET ; 
 scalar_t__ FUNC0 (struct ib_wq*,int /*<<< orphan*/ ,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct mlx4_ib_qp* FUNC4 (struct ib_qp*) ; 

__attribute__((used)) static void FUNC5(struct ib_rwq_ind_table *ind_tbl,
				struct ib_udata *udata)
{
	int i;

	for (i = 0; i < (1 << ind_tbl->log_ind_tbl_size); i++) {
		struct ib_wq *ibwq = ind_tbl->ind_tbl[i];
		struct mlx4_ib_qp *wq = FUNC4((struct ib_qp *)ibwq);

		FUNC1(&wq->mutex);

		if ((wq->rss_usecnt == 1) && (ibwq->state == IB_WQS_RDY))
			if (FUNC0(ibwq, IB_WQS_RESET, udata))
				FUNC3("failed to reverse WQN=%x\n",
					ibwq->wq_num);
		wq->rss_usecnt--;

		FUNC2(&wq->mutex);
	}
}