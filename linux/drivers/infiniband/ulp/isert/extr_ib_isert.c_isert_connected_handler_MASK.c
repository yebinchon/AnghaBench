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
struct rdma_cm_id {struct isert_np* context; TYPE_1__* qp; } ;
struct isert_np {int /*<<< orphan*/  sem; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pending; int /*<<< orphan*/  node; int /*<<< orphan*/  kref; int /*<<< orphan*/  state; } ;
struct isert_conn {int /*<<< orphan*/  sem; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pending; int /*<<< orphan*/  node; int /*<<< orphan*/  kref; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {struct isert_np* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct isert_np*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct rdma_cm_id *cma_id)
{
	struct isert_conn *isert_conn = cma_id->qp->qp_context;
	struct isert_np *isert_np = cma_id->context;

	FUNC0("conn %p\n", isert_conn);

	FUNC3(&isert_conn->mutex);
	isert_conn->state = ISER_CONN_UP;
	FUNC1(&isert_conn->kref);
	FUNC4(&isert_conn->mutex);

	FUNC3(&isert_np->mutex);
	FUNC2(&isert_conn->node, &isert_np->pending);
	FUNC4(&isert_np->mutex);

	FUNC0("np %p: Allow accept_np to continue\n", isert_np);
	FUNC5(&isert_np->sem);
}