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
struct qedr_qp {int /*<<< orphan*/  refcnt; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qedr_qp* FUNC1 (struct ib_qp*) ; 

void FUNC2(struct ib_qp *ibqp)
{
	struct qedr_qp *qp = FUNC1(ibqp);

	FUNC0(&qp->refcnt);
}