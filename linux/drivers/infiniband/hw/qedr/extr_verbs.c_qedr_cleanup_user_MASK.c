#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * umem; } ;
struct TYPE_3__ {int /*<<< orphan*/ * umem; } ;
struct qedr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qedr_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct qedr_dev *dev, struct qedr_qp *qp)
{
	FUNC0(qp->usq.umem);
	qp->usq.umem = NULL;

	FUNC0(qp->urq.umem);
	qp->urq.umem = NULL;
}