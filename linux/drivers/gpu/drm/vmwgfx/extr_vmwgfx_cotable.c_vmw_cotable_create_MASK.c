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
struct vmw_resource {size_t backup_size; size_t id; } ;
struct vmw_cotable {int seen_entries; size_t type; scalar_t__ scrubbed; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 TYPE_1__* co_info ; 
 scalar_t__ FUNC0 (int) ; 
 struct vmw_cotable* FUNC1 (struct vmw_resource*) ; 
 int FUNC2 (struct vmw_resource*,size_t) ; 
 int FUNC3 (struct vmw_resource*) ; 
 scalar_t__ FUNC4 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC5(struct vmw_resource *res)
{
	struct vmw_cotable *vcotbl = FUNC1(res);
	size_t new_size = res->backup_size;
	size_t needed_size;
	int ret;

	/* Check whether we need to resize the cotable */
	needed_size = (vcotbl->seen_entries + 1) * co_info[vcotbl->type].size;
	while (needed_size > new_size)
		new_size *= 2;

	if (FUNC0(new_size <= res->backup_size)) {
		if (vcotbl->scrubbed && FUNC4(res)) {
			ret = FUNC3(res);
			if (ret)
				return ret;
		}
		res->id = vcotbl->type;
		return 0;
	}

	return FUNC2(res, new_size);
}