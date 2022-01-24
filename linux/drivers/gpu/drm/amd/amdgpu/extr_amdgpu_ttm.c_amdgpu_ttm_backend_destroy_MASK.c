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
struct ttm_tt {int dummy; } ;
struct amdgpu_ttm_tt {int /*<<< orphan*/  ttm; scalar_t__ usertask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ttm_tt*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ttm_tt *ttm)
{
	struct amdgpu_ttm_tt *gtt = (void *)ttm;

	if (gtt->usertask)
		FUNC1(gtt->usertask);

	FUNC2(&gtt->ttm);
	FUNC0(gtt);
}