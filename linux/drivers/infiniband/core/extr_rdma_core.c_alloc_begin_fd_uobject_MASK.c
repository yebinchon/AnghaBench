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
struct uverbs_api_object {int dummy; } ;
struct ib_uverbs_file {int dummy; } ;
struct ib_uobject {int id; struct ib_uverbs_file* ufile; } ;

/* Variables and functions */
 struct ib_uobject* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 struct ib_uobject* FUNC2 (struct ib_uverbs_file*,struct uverbs_api_object const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static struct ib_uobject *
FUNC5(const struct uverbs_api_object *obj,
		       struct ib_uverbs_file *ufile)
{
	int new_fd;
	struct ib_uobject *uobj;

	new_fd = FUNC3(O_CLOEXEC);
	if (new_fd < 0)
		return FUNC0(new_fd);

	uobj = FUNC2(ufile, obj);
	if (FUNC1(uobj)) {
		FUNC4(new_fd);
		return uobj;
	}

	uobj->id = new_fd;
	uobj->ufile = ufile;

	return uobj;
}