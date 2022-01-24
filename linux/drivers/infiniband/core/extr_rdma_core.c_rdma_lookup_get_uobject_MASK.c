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
struct uverbs_attr_bundle {int /*<<< orphan*/  context; } ;
struct uverbs_api_object {TYPE_2__* type_class; struct uverbs_api_object const* uapi_object; int /*<<< orphan*/  context; } ;
struct ib_uverbs_file {TYPE_1__* device; } ;
typedef  struct ib_uobject {TYPE_2__* type_class; struct ib_uobject const* uapi_object; int /*<<< orphan*/  context; } const ib_uobject ;
typedef  int /*<<< orphan*/  s64 ;
typedef  enum rdma_lookup_mode { ____Placeholder_rdma_lookup_mode } rdma_lookup_mode ;
struct TYPE_4__ {int /*<<< orphan*/  (* lookup_put ) (struct uverbs_api_object const*,int) ;struct uverbs_api_object* (* lookup_get ) (struct uverbs_api_object const*,struct ib_uverbs_file*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  disassociate_srcu; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMSG ; 
 struct uverbs_api_object const* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct uverbs_api_object const*) ; 
 int UVERBS_LOOKUP_DESTROY ; 
 struct uverbs_api_object* FUNC2 (int /*<<< orphan*/ *,struct ib_uverbs_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct uverbs_api_object* FUNC4 (struct uverbs_api_object const*,struct ib_uverbs_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uverbs_api_object const*,int) ; 
 int FUNC6 (struct uverbs_api_object const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uverbs_api_object const*) ; 

struct ib_uobject *FUNC8(const struct uverbs_api_object *obj,
					   struct ib_uverbs_file *ufile, s64 id,
					   enum rdma_lookup_mode mode,
					   struct uverbs_attr_bundle *attrs)
{
	struct ib_uobject *uobj;
	int ret;

	if (obj == FUNC0(-ENOMSG)) {
		/* must be UVERBS_IDR_ANY_OBJECT, see uapi_get_object() */
		uobj = FUNC2(NULL, ufile, id, mode);
		if (FUNC1(uobj))
			return uobj;
	} else {
		if (FUNC1(obj))
			return FUNC0(-EINVAL);

		uobj = obj->type_class->lookup_get(obj, ufile, id, mode);
		if (FUNC1(uobj))
			return uobj;

		if (uobj->uapi_object != obj) {
			ret = -EINVAL;
			goto free;
		}
	}

	/*
	 * If we have been disassociated block every command except for
	 * DESTROY based commands.
	 */
	if (mode != UVERBS_LOOKUP_DESTROY &&
	    !FUNC3(ufile->device->ib_dev,
			      &ufile->device->disassociate_srcu)) {
		ret = -EIO;
		goto free;
	}

	ret = FUNC6(uobj, mode);
	if (ret)
		goto free;
	if (attrs)
		attrs->context = uobj->context;

	return uobj;
free:
	uobj->uapi_object->type_class->lookup_put(uobj, mode);
	FUNC7(uobj);
	return FUNC0(ret);
}