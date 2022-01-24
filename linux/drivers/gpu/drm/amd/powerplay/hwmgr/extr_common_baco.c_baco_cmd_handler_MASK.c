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
typedef  int u32 ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CMD_DELAY_MS 132 
#define  CMD_DELAY_US 131 
#define  CMD_READMODIFYWRITE 130 
#define  CMD_WAITFOR 129 
#define  CMD_WRITE 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct pp_hwmgr*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct pp_hwmgr *hwmgr, u32 command, u32 reg, u32 mask,
			        u32 shift, u32 value, u32 timeout)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
	u32 data;
	bool ret = true;

	switch (command) {
	case CMD_WRITE:
		FUNC1(reg, value << shift);
		break;
	case CMD_READMODIFYWRITE:
		data = FUNC0(reg);
		data = (data & (~mask)) | (value << shift);
		FUNC1(reg, data);
		break;
	case CMD_WAITFOR:
		ret = FUNC2(hwmgr, reg, mask, value);
		break;
	case CMD_DELAY_MS:
		if (timeout)
			/* Delay in milli Seconds */
			FUNC4(timeout);
		break;
	case CMD_DELAY_US:
		if (timeout)
			/* Delay in micro Seconds */
			FUNC5(timeout);
		break;

	default:
		FUNC3(adev->dev, "Invalid BACO command.\n");
		ret = false;
	}

	return ret;
}