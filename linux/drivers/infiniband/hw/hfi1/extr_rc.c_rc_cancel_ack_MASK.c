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
struct rvt_qp {int /*<<< orphan*/  r_flags; int /*<<< orphan*/  rspwait; scalar_t__ r_adefered; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVT_R_RSP_NAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 

__attribute__((used)) static inline void FUNC3(struct rvt_qp *qp)
{
	qp->r_adefered = 0;
	if (FUNC1(&qp->rspwait))
		return;
	FUNC0(&qp->rspwait);
	qp->r_flags &= ~RVT_R_RSP_NAK;
	FUNC2(qp);
}