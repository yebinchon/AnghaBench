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
typedef  int /*<<< orphan*/  u32 ;
struct rxe_sq {int /*<<< orphan*/  sq_lock; int /*<<< orphan*/  queue; } ;
struct rxe_send_wqe {int dummy; } ;
struct rxe_qp {struct rxe_sq sq; } ;
struct ib_send_wr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rxe_qp*,struct ib_send_wr const*,unsigned int,int /*<<< orphan*/ ,struct rxe_send_wqe*) ; 
 struct rxe_send_wqe* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct rxe_qp*,struct ib_send_wr const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rxe_qp *qp, const struct ib_send_wr *ibwr,
			 unsigned int mask, u32 length)
{
	int err;
	struct rxe_sq *sq = &qp->sq;
	struct rxe_send_wqe *send_wqe;
	unsigned long flags;

	err = FUNC8(qp, ibwr, mask, length);
	if (err)
		return err;

	FUNC5(&qp->sq.sq_lock, flags);

	if (FUNC7(FUNC3(sq->queue))) {
		err = -ENOMEM;
		goto err1;
	}

	send_wqe = FUNC2(sq->queue);

	err = FUNC1(qp, ibwr, mask, length, send_wqe);
	if (FUNC7(err))
		goto err1;

	/*
	 * make sure all changes to the work queue are
	 * written before we update the producer pointer
	 */
	FUNC4();

	FUNC0(sq->queue);
	FUNC6(&qp->sq.sq_lock, flags);

	return 0;

err1:
	FUNC6(&qp->sq.sq_lock, flags);
	return err;
}