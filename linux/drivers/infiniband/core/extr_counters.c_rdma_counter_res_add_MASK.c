#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rdma_counter {int /*<<< orphan*/  res; } ;
struct TYPE_2__ {int /*<<< orphan*/  task; int /*<<< orphan*/  kern_name; } ;
struct ib_qp {TYPE_1__ res; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rdma_counter *counter,
				 struct ib_qp *qp)
{
	if (FUNC0(&qp->res)) {
		FUNC3(&counter->res, qp->res.kern_name);
		FUNC2(&counter->res);
	} else {
		FUNC1(&counter->res, qp->res.task);
		FUNC4(&counter->res);
	}
}