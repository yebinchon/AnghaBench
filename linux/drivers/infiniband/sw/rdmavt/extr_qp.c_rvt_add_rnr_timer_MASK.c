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
typedef  int u32 ;
struct rvt_qp {int /*<<< orphan*/  s_rnr_timer; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 int /*<<< orphan*/  RVT_S_WAIT_RNR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*,int) ; 

void FUNC5(struct rvt_qp *qp, u32 aeth)
{
	u32 to;

	FUNC1(&qp->s_lock);
	qp->s_flags |= RVT_S_WAIT_RNR;
	to = FUNC3(aeth);
	FUNC4(qp, to);
	FUNC0(&qp->s_rnr_timer,
		      FUNC2(1000 * to), HRTIMER_MODE_REL_PINNED);
}