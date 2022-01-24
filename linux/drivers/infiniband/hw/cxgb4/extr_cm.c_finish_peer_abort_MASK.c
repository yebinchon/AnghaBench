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
struct c4iw_qp_attributes {int /*<<< orphan*/  next_state; } ;
struct TYPE_3__ {TYPE_2__* qp; scalar_t__ cm_id; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  srqe_idx; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rhp; } ;

/* Variables and functions */
 int /*<<< orphan*/  C4IW_QP_ATTR_NEXT_STATE ; 
 int /*<<< orphan*/  C4IW_QP_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,struct c4iw_qp_attributes*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct c4iw_ep*) ; 

__attribute__((used)) static void FUNC5(struct c4iw_dev *dev, struct c4iw_ep *ep)
{
	FUNC2(ep, ep->srqe_idx);
	if (ep->com.cm_id && ep->com.qp) {
		struct c4iw_qp_attributes attrs;

		attrs.next_state = C4IW_QP_STATE_ERROR;
		FUNC0(ep->com.qp->rhp, ep->com.qp,
			       C4IW_QP_ATTR_NEXT_STATE,	&attrs, 1);
	}
	FUNC3(ep);
	FUNC4(ep);
	FUNC1(&ep->com);
}