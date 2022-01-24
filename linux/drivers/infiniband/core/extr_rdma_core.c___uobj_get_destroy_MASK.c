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
struct uverbs_attr_bundle {int /*<<< orphan*/  ufile; } ;
struct uverbs_api_object {int dummy; } ;
struct ib_uobject {int dummy; } ;

/* Variables and functions */
 struct ib_uobject* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_DESTROY ; 
 struct ib_uobject* FUNC2 (struct uverbs_api_object const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_uobject*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 

struct ib_uobject *FUNC5(const struct uverbs_api_object *obj,
				      u32 id, struct uverbs_attr_bundle *attrs)
{
	struct ib_uobject *uobj;
	int ret;

	uobj = FUNC2(obj, attrs->ufile, id,
				       UVERBS_LOOKUP_DESTROY, attrs);
	if (FUNC1(uobj))
		return uobj;

	ret = FUNC4(uobj, attrs);
	if (ret) {
		FUNC3(uobj, UVERBS_LOOKUP_DESTROY);
		return FUNC0(ret);
	}

	return uobj;
}