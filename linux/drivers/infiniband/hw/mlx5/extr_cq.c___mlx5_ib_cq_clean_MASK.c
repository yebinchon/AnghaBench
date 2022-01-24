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
typedef  int u8 ;
typedef  int u32 ;
struct mlx5_ib_srq {int dummy; } ;
struct TYPE_4__ {int cons_index; int cqe_sz; } ;
struct TYPE_3__ {int cqe; } ;
struct mlx5_ib_cq {TYPE_2__ mcq; TYPE_1__ ibcq; } ;
struct mlx5_cqe64 {int op_own; int /*<<< orphan*/  wqe_counter; int /*<<< orphan*/  srqn; } ;

/* Variables and functions */
 int MLX5_CQE_OWNER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct mlx5_ib_cq*,int) ; 
 scalar_t__ FUNC2 (struct mlx5_ib_cq*,int) ; 
 scalar_t__ FUNC3 (struct mlx5_cqe64*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_srq*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct mlx5_ib_cq *cq, u32 rsn, struct mlx5_ib_srq *srq)
{
	struct mlx5_cqe64 *cqe64, *dest64;
	void *cqe, *dest;
	u32 prod_index;
	int nfreed = 0;
	u8 owner_bit;

	if (!cq)
		return;

	/* First we need to find the current producer index, so we
	 * know where to start cleaning from.  It doesn't matter if HW
	 * adds new entries after this loop -- the QP we're worried
	 * about is already in RESET, so the new entries won't come
	 * from our QP and therefore don't need to be checked.
	 */
	for (prod_index = cq->mcq.cons_index; FUNC2(cq, prod_index); prod_index++)
		if (prod_index == cq->mcq.cons_index + cq->ibcq.cqe)
			break;

	/* Now sweep backwards through the CQ, removing CQ entries
	 * that match our QP by copying older entries on top of them.
	 */
	while ((int) --prod_index - (int) cq->mcq.cons_index >= 0) {
		cqe = FUNC1(cq, prod_index & cq->ibcq.cqe);
		cqe64 = (cq->mcq.cqe_sz == 64) ? cqe : cqe + 64;
		if (FUNC3(cqe64, rsn)) {
			if (srq && (FUNC7(cqe64->srqn) & 0xffffff))
				FUNC6(srq, FUNC0(cqe64->wqe_counter));
			++nfreed;
		} else if (nfreed) {
			dest = FUNC1(cq, (prod_index + nfreed) & cq->ibcq.cqe);
			dest64 = (cq->mcq.cqe_sz == 64) ? dest : dest + 64;
			owner_bit = dest64->op_own & MLX5_CQE_OWNER_MASK;
			FUNC4(dest, cqe, cq->mcq.cqe_sz);
			dest64->op_own = owner_bit |
				(dest64->op_own & ~MLX5_CQE_OWNER_MASK);
		}
	}

	if (nfreed) {
		cq->mcq.cons_index += nfreed;
		/* Make sure update of buffer contents is done before
		 * updating consumer index.
		 */
		FUNC8();
		FUNC5(&cq->mcq);
	}
}