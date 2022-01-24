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
struct timer_list {int dummy; } ;
struct i40iw_sc_qp {int dummy; } ;
struct i40iw_qp {int /*<<< orphan*/  ibqp; int /*<<< orphan*/  sc_qp; } ;

/* Variables and functions */
 struct i40iw_qp* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_qp*,int) ; 
 struct i40iw_qp* iwqp ; 
 int /*<<< orphan*/  terminate_timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct i40iw_qp *iwqp = FUNC0(iwqp, t, terminate_timer);
	struct i40iw_sc_qp *qp = (struct i40iw_sc_qp *)&iwqp->sc_qp;

	FUNC2(qp, 1);
	FUNC1(&iwqp->ibqp);
}