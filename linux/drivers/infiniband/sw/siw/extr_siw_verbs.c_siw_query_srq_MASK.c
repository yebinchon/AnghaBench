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
struct siw_srq {int /*<<< orphan*/  lock; int /*<<< orphan*/  limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  num_rqe; } ;
struct ib_srq_attr {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ib_srq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_srq* FUNC2 (struct ib_srq*) ; 

int FUNC3(struct ib_srq *base_srq, struct ib_srq_attr *attrs)
{
	struct siw_srq *srq = FUNC2(base_srq);
	unsigned long flags;

	FUNC0(&srq->lock, flags);

	attrs->max_wr = srq->num_rqe;
	attrs->max_sge = srq->max_sge;
	attrs->srq_limit = srq->limit;

	FUNC1(&srq->lock, flags);

	return 0;
}