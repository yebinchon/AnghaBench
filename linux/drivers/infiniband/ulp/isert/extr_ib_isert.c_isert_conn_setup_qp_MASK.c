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
struct rdma_cm_id {int dummy; } ;
struct isert_conn {int /*<<< orphan*/  qp; } ;
struct isert_comp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct isert_comp* FUNC2 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct isert_comp*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_conn*,struct isert_comp*,struct rdma_cm_id*) ; 

__attribute__((used)) static int
FUNC5(struct isert_conn *isert_conn, struct rdma_cm_id *cma_id)
{
	struct isert_comp *comp;
	int ret;

	comp = FUNC2(isert_conn);
	isert_conn->qp = FUNC4(isert_conn, comp, cma_id);
	if (FUNC0(isert_conn->qp)) {
		ret = FUNC1(isert_conn->qp);
		goto err;
	}

	return 0;
err:
	FUNC3(comp);
	return ret;
}