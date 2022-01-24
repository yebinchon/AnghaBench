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
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; } ;
struct ib_uobject {struct ib_pd* object; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
typedef  enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_pd*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,struct ib_uobject*) ; 

__attribute__((used)) static int FUNC2(struct ib_uobject *uobject,
			  enum rdma_remove_reason why,
			  struct uverbs_attr_bundle *attrs)
{
	struct ib_pd *pd = uobject->object;
	int ret;

	ret = FUNC1(&pd->usecnt, why, uobject);
	if (ret)
		return ret;

	FUNC0(pd, &attrs->driver_udata);
	return 0;
}