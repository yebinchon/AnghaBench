#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  task; } ;
struct rxe_qp {TYPE_1__ req; scalar_t__ is_user; int /*<<< orphan*/  valid; } ;
struct ib_send_wr {int dummy; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ QP_STATE_READY ; 
 int FUNC0 (struct rxe_qp*,struct ib_send_wr const*,struct ib_send_wr const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rxe_qp* FUNC2 (struct ib_qp*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ib_qp *ibqp, const struct ib_send_wr *wr,
			 const struct ib_send_wr **bad_wr)
{
	struct rxe_qp *qp = FUNC2(ibqp);

	if (FUNC3(!qp->valid)) {
		*bad_wr = wr;
		return -EINVAL;
	}

	if (FUNC3(qp->req.state < QP_STATE_READY)) {
		*bad_wr = wr;
		return -EINVAL;
	}

	if (qp->is_user) {
		/* Utilize process context to do protocol processing */
		FUNC1(&qp->req.task, 0);
		return 0;
	} else
		return FUNC0(qp, wr, bad_wr);
}