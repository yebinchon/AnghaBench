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
struct TYPE_2__ {scalar_t__ queue; } ;
struct rxe_srq {struct rxe_srq* pd; TYPE_1__ rq; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_srq*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct rxe_srq* FUNC2 (struct ib_srq*) ; 

__attribute__((used)) static void FUNC3(struct ib_srq *ibsrq, struct ib_udata *udata)
{
	struct rxe_srq *srq = FUNC2(ibsrq);

	if (srq->rq.queue)
		FUNC1(srq->rq.queue);

	FUNC0(srq->pd);
	FUNC0(srq);
}