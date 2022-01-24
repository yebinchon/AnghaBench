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
typedef  int /*<<< orphan*/  u32 ;
struct rdma_restrack_root {int /*<<< orphan*/  xa; } ;
struct rdma_restrack_entry {int dummy; } ;
struct ib_device {struct rdma_restrack_root* res; } ;
typedef  enum rdma_restrack_type { ____Placeholder_rdma_restrack_type } rdma_restrack_type ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct rdma_restrack_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_restrack_entry*) ; 
 struct rdma_restrack_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct rdma_restrack_entry *
FUNC5(struct ib_device *dev,
		       enum rdma_restrack_type type, u32 id)
{
	struct rdma_restrack_root *rt = &dev->res[type];
	struct rdma_restrack_entry *res;

	FUNC3(&rt->xa);
	res = FUNC2(&rt->xa, id);
	if (!res || !FUNC1(res))
		res = FUNC0(-ENOENT);
	FUNC4(&rt->xa);

	return res;
}