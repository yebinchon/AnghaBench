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
struct uverbs_api_object {int dummy; } ;
struct ib_uverbs_file {int /*<<< orphan*/  idr; } ;
struct ib_uobject {int /*<<< orphan*/  id; TYPE_1__* context; int /*<<< orphan*/  cg_obj; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct ib_uobject* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  RDMACG_RESOURCE_HCA_OBJECT ; 
 struct ib_uobject* FUNC2 (struct ib_uverbs_file*,struct uverbs_api_object const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_uobject *
FUNC7(const struct uverbs_api_object *obj,
			struct ib_uverbs_file *ufile)
{
	int ret;
	struct ib_uobject *uobj;

	uobj = FUNC2(ufile, obj);
	if (FUNC1(uobj))
		return uobj;

	ret = FUNC4(uobj);
	if (ret)
		goto uobj_put;

	ret = FUNC3(&uobj->cg_obj, uobj->context->device,
				   RDMACG_RESOURCE_HCA_OBJECT);
	if (ret)
		goto remove;

	return uobj;

remove:
	FUNC6(&ufile->idr, uobj->id);
uobj_put:
	FUNC5(uobj);
	return FUNC0(ret);
}