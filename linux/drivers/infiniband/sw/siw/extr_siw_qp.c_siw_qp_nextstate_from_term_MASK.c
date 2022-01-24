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
struct siw_qp_attrs {int state; } ;
struct TYPE_3__ {int state; } ;
struct siw_qp {TYPE_1__ attrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  wr_status; } ;

/* Variables and functions */
#define  SIW_QP_STATE_ERROR 128 
 int /*<<< orphan*/  SIW_WR_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*) ; 
 TYPE_2__* FUNC2 (struct siw_qp*) ; 

__attribute__((used)) static void FUNC3(struct siw_qp *qp,
				       struct siw_qp_attrs *attrs)
{
	switch (attrs->state) {
	case SIW_QP_STATE_ERROR:
		FUNC0(qp);
		qp->attrs.state = SIW_QP_STATE_ERROR;

		if (FUNC2(qp)->wr_status != SIW_WR_IDLE)
			FUNC1(qp);
		break;

	default:
		break;
	}
}