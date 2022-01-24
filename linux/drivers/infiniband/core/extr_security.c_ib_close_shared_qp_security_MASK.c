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
struct ib_qp_security {int /*<<< orphan*/  shared_qp_list; TYPE_1__* qp; } ;
struct ib_qp {TYPE_2__* qp_sec; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {struct ib_qp* real_qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp_security*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ib_qp_security *sec)
{
	struct ib_qp *real_qp = sec->qp->real_qp;

	FUNC2(&real_qp->qp_sec->mutex);
	FUNC1(&sec->shared_qp_list);
	FUNC3(&real_qp->qp_sec->mutex);

	FUNC0(sec);
}