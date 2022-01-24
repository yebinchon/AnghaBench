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
struct siw_qp {int /*<<< orphan*/  state_lock; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*) ; 
 struct siw_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ib_qp *base_qp)
{
	struct siw_qp *qp = FUNC2(base_qp);

	FUNC0(&qp->state_lock);
	FUNC1(qp);
	FUNC3(&qp->state_lock);
}