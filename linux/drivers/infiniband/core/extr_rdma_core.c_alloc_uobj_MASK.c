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
struct uverbs_api_object {TYPE_1__* type_attrs; } ;
struct ib_uverbs_file {int dummy; } ;
struct ib_uobject {int /*<<< orphan*/  ref; int /*<<< orphan*/  usecnt; struct uverbs_api_object const* uapi_object; int /*<<< orphan*/  list; struct ib_ucontext* context; struct ib_uverbs_file* ufile; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_uobject* FUNC0 (struct ib_ucontext*) ; 
 struct ib_uobject* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct ib_ucontext* FUNC5 (struct ib_uverbs_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ib_uobject* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_uobject *FUNC8(struct ib_uverbs_file *ufile,
				     const struct uverbs_api_object *obj)
{
	struct ib_uobject *uobj;
	struct ib_ucontext *ucontext;

	ucontext = FUNC5(ufile);
	if (FUNC3(ucontext))
		return FUNC0(ucontext);

	uobj = FUNC7(obj->type_attrs->obj_size, GFP_KERNEL);
	if (!uobj)
		return FUNC1(-ENOMEM);
	/*
	 * user_handle should be filled by the handler,
	 * The object is added to the list in the commit stage.
	 */
	uobj->ufile = ufile;
	uobj->context = ucontext;
	FUNC2(&uobj->list);
	uobj->uapi_object = obj;
	/*
	 * Allocated objects start out as write locked to deny any other
	 * syscalls from accessing them until they are committed. See
	 * rdma_alloc_commit_uobject
	 */
	FUNC4(&uobj->usecnt, -1);
	FUNC6(&uobj->ref);

	return uobj;
}