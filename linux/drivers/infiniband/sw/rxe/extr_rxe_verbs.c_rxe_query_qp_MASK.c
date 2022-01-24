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
struct rxe_qp {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_qp*,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_qp*,struct ib_qp_init_attr*) ; 
 struct rxe_qp* FUNC2 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC3(struct ib_qp *ibqp, struct ib_qp_attr *attr,
			int mask, struct ib_qp_init_attr *init)
{
	struct rxe_qp *qp = FUNC2(ibqp);

	FUNC1(qp, init);
	FUNC0(qp, attr, mask);

	return 0;
}