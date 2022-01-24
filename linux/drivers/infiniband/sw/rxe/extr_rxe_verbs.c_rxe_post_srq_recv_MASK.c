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
struct TYPE_2__ {int /*<<< orphan*/  producer_lock; } ;
struct rxe_srq {TYPE_1__ rq; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {struct ib_recv_wr* next; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct ib_recv_wr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rxe_srq* FUNC3 (struct ib_srq*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
			     const struct ib_recv_wr **bad_wr)
{
	int err = 0;
	unsigned long flags;
	struct rxe_srq *srq = FUNC3(ibsrq);

	FUNC1(&srq->rq.producer_lock, flags);

	while (wr) {
		err = FUNC0(&srq->rq, wr);
		if (FUNC4(err))
			break;
		wr = wr->next;
	}

	FUNC2(&srq->rq.producer_lock, flags);

	if (err)
		*bad_wr = wr;

	return err;
}