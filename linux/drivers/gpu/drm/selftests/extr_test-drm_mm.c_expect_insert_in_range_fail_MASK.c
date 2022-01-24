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
typedef  int /*<<< orphan*/  u64 ;
struct drm_mm_node {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct drm_mm {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct drm_mm*,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static bool FUNC4(struct drm_mm *mm,
					u64 size,
					u64 range_start,
					u64 range_end)
{
	struct drm_mm_node tmp = {};
	int err;

	err = FUNC0(mm, &tmp,
					  size, 0, 0,
					  range_start, range_end,
					  0);
	if (FUNC2(err == -ENOSPC))
		return true;

	if (!err) {
		FUNC3("impossible insert succeeded, node %llx + %llu, range [%llx, %llx]\n",
		       tmp.start, tmp.size, range_start, range_end);
		FUNC1(&tmp);
	} else {
		FUNC3("impossible insert failed with wrong error %d [expected %d], size %llu, range [%llx, %llx]\n",
		       err, -ENOSPC, size, range_start, range_end);
	}

	return false;
}