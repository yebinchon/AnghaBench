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
struct ib_qp {int /*<<< orphan*/  rdma_mrs; int /*<<< orphan*/  sig_mrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp*,int /*<<< orphan*/ *) ; 

void FUNC1(struct ib_qp *qp)
{
	FUNC0(qp, &qp->sig_mrs);
	FUNC0(qp, &qp->rdma_mrs);
}