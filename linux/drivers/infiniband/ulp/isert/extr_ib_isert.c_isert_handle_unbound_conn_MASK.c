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
struct isert_np {int /*<<< orphan*/  mutex; } ;
struct isert_conn {int /*<<< orphan*/  release_work; int /*<<< orphan*/  node; TYPE_1__* cm_id; } ;
struct TYPE_2__ {struct isert_np* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isert_conn*) ; 
 int /*<<< orphan*/  isert_release_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct isert_conn *isert_conn)
{
	struct isert_np *isert_np = isert_conn->cm_id->context;

	FUNC3(&isert_np->mutex);
	if (!FUNC2(&isert_conn->node)) {
		/*
		 * This means iscsi doesn't know this connection
		 * so schedule a cleanup ourselves
		 */
		FUNC1(&isert_conn->node);
		FUNC0(isert_conn);
		FUNC5(isert_release_wq, &isert_conn->release_work);
	}
	FUNC4(&isert_np->mutex);
}