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
struct siw_srq {scalar_t__ num_rqe; int armed; scalar_t__ limit; int /*<<< orphan*/  lock; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int dummy; } ;
typedef  enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IB_SRQ_LIMIT ; 
 int IB_SRQ_MAX_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_srq* FUNC2 (struct ib_srq*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct ib_srq *base_srq, struct ib_srq_attr *attrs,
		   enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
	struct siw_srq *srq = FUNC2(base_srq);
	unsigned long flags;
	int rv = 0;

	FUNC0(&srq->lock, flags);

	if (attr_mask & IB_SRQ_MAX_WR) {
		/* resize request not yet supported */
		rv = -EOPNOTSUPP;
		goto out;
	}
	if (attr_mask & IB_SRQ_LIMIT) {
		if (attrs->srq_limit) {
			if (FUNC3(attrs->srq_limit > srq->num_rqe)) {
				rv = -EINVAL;
				goto out;
			}
			srq->armed = 1;
		} else {
			srq->armed = 0;
		}
		srq->limit = attrs->srq_limit;
	}
out:
	FUNC1(&srq->lock, flags);

	return rv;
}