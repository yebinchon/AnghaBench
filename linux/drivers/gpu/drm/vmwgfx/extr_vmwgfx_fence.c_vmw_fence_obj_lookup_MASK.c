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
typedef  scalar_t__ u32 ;
struct ttm_object_file {int dummy; } ;
struct ttm_base_object {scalar_t__ refcount_release; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ttm_base_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 struct ttm_base_object* FUNC2 (struct ttm_object_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_base_object**) ; 
 scalar_t__ vmw_user_fence_base_release ; 

__attribute__((used)) static struct ttm_base_object *
FUNC4(struct ttm_object_file *tfile, u32 handle)
{
	struct ttm_base_object *base = FUNC2(tfile, handle);

	if (!base) {
		FUNC1("Invalid fence object handle 0x%08lx.\n",
		       (unsigned long)handle);
		return FUNC0(-EINVAL);
	}

	if (base->refcount_release != vmw_user_fence_base_release) {
		FUNC1("Invalid fence object handle 0x%08lx.\n",
		       (unsigned long)handle);
		FUNC3(&base);
		return FUNC0(-EINVAL);
	}

	return base;
}