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
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct pp_hwmgr *hwmgr, u32 reg, u32 mask, u32 value)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
	u32 timeout = 5000, data;

	do {
		FUNC1(1);
		data = FUNC0(reg);
		timeout--;
	} while (value != (data & mask) && (timeout != 0));

	if (timeout == 0)
		return false;

	return true;
}