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
struct uverbs_attr_bundle {int dummy; } ;
struct uverbs_api_object {int dummy; } ;
struct ib_uobject {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_uobject*) ; 
 int FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_WRITE ; 
 struct ib_uobject* FUNC2 (struct uverbs_api_object const*,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_uobject*,int /*<<< orphan*/ ) ; 

int FUNC4(const struct uverbs_api_object *obj, u32 id,
			   struct uverbs_attr_bundle *attrs)
{
	struct ib_uobject *uobj;

	uobj = FUNC2(obj, id, attrs);
	if (FUNC0(uobj))
		return FUNC1(uobj);

	FUNC3(uobj, UVERBS_LOOKUP_WRITE);
	return 0;
}