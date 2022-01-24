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
struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; } ;
struct ib_uverbs_file {int /*<<< orphan*/  hw_destroy_rwsem; } ;
struct ib_uobject {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_REMOVE_DESTROY ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ib_uobject*,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int FUNC4 (struct ib_uobject*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_uobject *uobj, struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_file *ufile = attrs->ufile;
	int ret;

	FUNC1(&ufile->hw_destroy_rwsem);

	ret = FUNC4(uobj, UVERBS_LOOKUP_WRITE);
	if (ret)
		goto out_unlock;

	ret = FUNC3(uobj, RDMA_REMOVE_DESTROY, attrs);
	if (ret) {
		FUNC0(&uobj->usecnt, 0);
		goto out_unlock;
	}

out_unlock:
	FUNC2(&ufile->hw_destroy_rwsem);
	return ret;
}