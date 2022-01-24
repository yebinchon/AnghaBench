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
struct rdma_restrack_root {int /*<<< orphan*/  xa; } ;
struct rdma_restrack_entry {int valid; size_t type; int /*<<< orphan*/ * task; int /*<<< orphan*/  comp; int /*<<< orphan*/  id; } ;
struct ib_device {struct rdma_restrack_root* res; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_restrack_entry*) ; 
 struct ib_device* FUNC3 (struct rdma_restrack_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rdma_restrack_entry* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct rdma_restrack_entry *res)
{
	struct rdma_restrack_entry *old;
	struct rdma_restrack_root *rt;
	struct ib_device *dev;

	if (!res->valid)
		goto out;

	dev = FUNC3(res);
	if (FUNC0(!dev))
		return;

	rt = &dev->res[res->type];

	old = FUNC5(&rt->xa, res->id);
	FUNC0(old != res);
	res->valid = false;

	FUNC2(res);
	FUNC4(&res->comp);

out:
	if (res->task) {
		FUNC1(res->task);
		res->task = NULL;
	}
}