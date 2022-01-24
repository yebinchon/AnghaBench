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
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {int dummy; } ;
typedef  enum uverbs_obj_access { ____Placeholder_uverbs_obj_access } uverbs_obj_access ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  UVERBS_ACCESS_DESTROY 131 
#define  UVERBS_ACCESS_NEW 130 
#define  UVERBS_ACCESS_READ 129 
#define  UVERBS_ACCESS_WRITE 128 
 int /*<<< orphan*/  UVERBS_LOOKUP_DESTROY ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_READ ; 
 int /*<<< orphan*/  UVERBS_LOOKUP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 int FUNC2 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_uobject*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ib_uobject *uobj,
			   enum uverbs_obj_access access, bool commit,
			   struct uverbs_attr_bundle *attrs)
{
	int ret = 0;

	/*
	 * refcounts should be handled at the object level and not at the
	 * uobject level. Refcounts of the objects themselves are done in
	 * handlers.
	 */

	switch (access) {
	case UVERBS_ACCESS_READ:
		FUNC3(uobj, UVERBS_LOOKUP_READ);
		break;
	case UVERBS_ACCESS_WRITE:
		FUNC3(uobj, UVERBS_LOOKUP_WRITE);
		break;
	case UVERBS_ACCESS_DESTROY:
		if (uobj)
			FUNC3(uobj, UVERBS_LOOKUP_DESTROY);
		break;
	case UVERBS_ACCESS_NEW:
		if (commit)
			ret = FUNC2(uobj, attrs);
		else
			FUNC1(uobj, attrs);
		break;
	default:
		FUNC0(true);
		ret = -EOPNOTSUPP;
	}

	return ret;
}