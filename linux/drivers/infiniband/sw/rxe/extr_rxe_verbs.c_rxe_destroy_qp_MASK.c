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
struct ib_udata {int dummy; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_qp*) ; 
 struct rxe_qp* FUNC3 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC4(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct rxe_qp *qp = FUNC3(ibqp);

	FUNC2(qp);
	FUNC0(qp);
	FUNC1(qp);
	return 0;
}