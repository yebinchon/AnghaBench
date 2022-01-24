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
struct TYPE_4__ {int /*<<< orphan*/  flags; TYPE_1__* qp; } ;
struct c4iw_ep {TYPE_2__ com; } ;
struct TYPE_3__ {int /*<<< orphan*/  srq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_REQ_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct c4iw_ep *ep)
{
	if (!ep->com.qp || !ep->com.qp->srq) {
		FUNC1(ep);
		return 0;
	}
	FUNC2(ABORT_REQ_IN_PROGRESS, &ep->com.flags);
	FUNC0(ep);
	return 0;
}