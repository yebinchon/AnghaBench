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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {scalar_t__ usertask; int /*<<< orphan*/  userflags; int /*<<< orphan*/  userptr; } ;
struct TYPE_2__ {scalar_t__ group_leader; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(struct ttm_tt *ttm, uint64_t addr,
			      uint32_t flags)
{
	struct amdgpu_ttm_tt *gtt = (void *)ttm;

	if (gtt == NULL)
		return -EINVAL;

	gtt->userptr = addr;
	gtt->userflags = flags;

	if (gtt->usertask)
		FUNC1(gtt->usertask);
	gtt->usertask = current->group_leader;
	FUNC0(gtt->usertask);

	return 0;
}