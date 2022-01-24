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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GRBM_STATUS ; 
 int /*<<< orphan*/  GUI_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_STATUS ; 

__attribute__((used)) static bool FUNC2(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC0(FUNC1(GC, 0, mmGRBM_STATUS),
				GRBM_STATUS, GUI_ACTIVE))
		return false;
	else
		return true;
}