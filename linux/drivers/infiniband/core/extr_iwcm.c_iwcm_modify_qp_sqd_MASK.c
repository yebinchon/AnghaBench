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
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_QPS_SQD ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int FUNC1 (struct ib_qp*,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ib_qp *qp)
{
	struct ib_qp_attr qp_attr;

	FUNC0(qp == NULL);
	qp_attr.qp_state = IB_QPS_SQD;
	return FUNC1(qp, &qp_attr, IB_QP_STATE);
}