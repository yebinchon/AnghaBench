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
struct i40iw_sc_qp {scalar_t__ back_qp; } ;
struct i40iw_qp {int /*<<< orphan*/  ibqp; int /*<<< orphan*/  terminate_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct i40iw_sc_qp *qp)
{
	struct i40iw_qp *iwqp;

	iwqp = (struct i40iw_qp *)qp->back_qp;
	if (FUNC0(&iwqp->terminate_timer))
		FUNC1(&iwqp->ibqp);
}