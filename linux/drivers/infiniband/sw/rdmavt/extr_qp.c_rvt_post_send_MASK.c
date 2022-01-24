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
struct rvt_qp {size_t state; scalar_t__ s_head; int /*<<< orphan*/  s_hlock; int /*<<< orphan*/  s_last; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* schedule_send_no_lock ) (struct rvt_qp*) ;int /*<<< orphan*/  (* do_send ) (struct rvt_qp*) ;} ;
struct rvt_dev_info {TYPE_1__ driver_f; } ;
struct ib_send_wr {struct ib_send_wr* next; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RVT_POST_SEND_OK ; 
 int* ib_rvt_state_ops ; 
 struct rvt_dev_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rvt_qp* FUNC2 (struct ib_qp*) ; 
 int FUNC3 (struct rvt_qp*,struct ib_send_wr const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_qp*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct ib_qp *ibqp, const struct ib_send_wr *wr,
		  const struct ib_send_wr **bad_wr)
{
	struct rvt_qp *qp = FUNC2(ibqp);
	struct rvt_dev_info *rdi = FUNC1(ibqp->device);
	unsigned long flags = 0;
	bool call_send;
	unsigned nreq = 0;
	int err = 0;

	FUNC4(&qp->s_hlock, flags);

	/*
	 * Ensure QP state is such that we can send. If not bail out early,
	 * there is no need to do this every time we post a send.
	 */
	if (FUNC8(!(ib_rvt_state_ops[qp->state] & RVT_POST_SEND_OK))) {
		FUNC5(&qp->s_hlock, flags);
		return -EINVAL;
	}

	/*
	 * If the send queue is empty, and we only have a single WR then just go
	 * ahead and kick the send engine into gear. Otherwise we will always
	 * just schedule the send to happen later.
	 */
	call_send = qp->s_head == FUNC0(qp->s_last) && !wr->next;

	for (; wr; wr = wr->next) {
		err = FUNC3(qp, wr, &call_send);
		if (FUNC8(err)) {
			*bad_wr = wr;
			goto bail;
		}
		nreq++;
	}
bail:
	FUNC5(&qp->s_hlock, flags);
	if (nreq) {
		/*
		 * Only call do_send if there is exactly one packet, and the
		 * driver said it was ok.
		 */
		if (nreq == 1 && call_send)
			rdi->driver_f.do_send(qp);
		else
			rdi->driver_f.schedule_send_no_lock(qp);
	}
	return err;
}