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
struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; int /*<<< orphan*/  context; } ;
struct ib_uverbs_file {int /*<<< orphan*/  ref; int /*<<< orphan*/  hw_destroy_rwsem; } ;
struct ib_uobject {int /*<<< orphan*/  context; struct ib_uverbs_file* ufile; } ;
struct file {struct ib_uobject* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_REMOVE_CLOSE ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_release_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_uobject*,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_uobject*) ; 

void FUNC7(struct file *f)
{
	struct ib_uobject *uobj = f->private_data;
	struct ib_uverbs_file *ufile = uobj->ufile;
	struct uverbs_attr_bundle attrs = {
		.context = uobj->context,
		.ufile = ufile,
	};

	if (FUNC1(&ufile->hw_destroy_rwsem)) {
		/*
		 * lookup_get_fd_uobject holds the kref on the struct file any
		 * time a FD uobj is locked, which prevents this release
		 * method from being invoked. Meaning we can always get the
		 * write lock here, or we have a kernel bug.
		 */
		FUNC0(FUNC5(uobj, UVERBS_LOOKUP_WRITE));
		FUNC4(uobj, RDMA_REMOVE_CLOSE, &attrs);
		FUNC3(&ufile->hw_destroy_rwsem);
	}

	/* Matches the get in alloc_begin_fd_uobject */
	FUNC2(&ufile->ref, ib_uverbs_release_file);

	/* Pairs with filp->private_data in alloc_begin_fd_uobject */
	FUNC6(uobj);
}