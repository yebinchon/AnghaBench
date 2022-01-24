#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uverbs_attr_bundle {struct ib_uverbs_file* ufile; } ;
struct ib_uverbs_file {int /*<<< orphan*/  uobjects_lock; int /*<<< orphan*/  hw_destroy_rwsem; } ;
struct ib_uobject {int /*<<< orphan*/  list; TYPE_2__* uapi_object; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * context; int /*<<< orphan*/ * object; int /*<<< orphan*/  id; } ;
typedef  enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;
struct TYPE_4__ {TYPE_1__* type_class; } ;
struct TYPE_3__ {int (* destroy_hw ) (struct ib_uobject*,int,struct uverbs_attr_bundle*) ;int /*<<< orphan*/  (* remove_handle ) (struct ib_uobject*) ;int /*<<< orphan*/  (* alloc_abort ) (struct ib_uobject*) ;} ;

/* Variables and functions */
 int RDMA_REMOVE_ABORT ; 
 int RDMA_REMOVE_DESTROY ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_uobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int,struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct ib_uobject*,int,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_uobject*) ; 

__attribute__((used)) static int FUNC14(struct ib_uobject *uobj,
				  enum rdma_remove_reason reason,
				  struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_file *ufile = attrs->ufile;
	unsigned long flags;
	int ret;

	FUNC7(&ufile->hw_destroy_rwsem);
	FUNC2(uobj, UVERBS_LOOKUP_WRITE);

	if (uobj->object) {
		ret = uobj->uapi_object->type_class->destroy_hw(uobj, reason,
								attrs);
		if (ret) {
			if (FUNC4(ret, reason, uobj))
				return ret;

			/* Nothing to be done, dangle the memory and move on */
			FUNC0(true,
			     "ib_uverbs: failed to remove uobject id %d, driver err=%d",
			     uobj->id, ret);
		}

		uobj->object = NULL;
	}

	if (reason == RDMA_REMOVE_ABORT) {
		FUNC1(!FUNC6(&uobj->list));
		FUNC1(!uobj->context);
		uobj->uapi_object->type_class->alloc_abort(uobj);
	}

	uobj->context = NULL;

	/*
	 * For DESTROY the usecnt is held write locked, the caller is expected
	 * to put it unlock and put the object when done with it. Only DESTROY
	 * can remove the IDR handle.
	 */
	if (reason != RDMA_REMOVE_DESTROY)
		FUNC3(&uobj->usecnt, 0);
	else
		uobj->uapi_object->type_class->remove_handle(uobj);

	if (!FUNC6(&uobj->list)) {
		FUNC8(&ufile->uobjects_lock, flags);
		FUNC5(&uobj->list);
		FUNC9(&ufile->uobjects_lock, flags);

		/*
		 * Pairs with the get in rdma_alloc_commit_uobject(), could
		 * destroy uobj.
		 */
		FUNC13(uobj);
	}

	/*
	 * When aborting the stack kref remains owned by the core code, and is
	 * not transferred into the type. Pairs with the get in alloc_uobj
	 */
	if (reason == RDMA_REMOVE_ABORT)
		FUNC13(uobj);

	return 0;
}