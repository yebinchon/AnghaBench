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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mclk_strobe_mode_threshold; } ;
struct TYPE_2__ {scalar_t__ vram_type; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_VRAM_TYPE_GDDR5 ; 
 int /*<<< orphan*/  SISLANDS_SMC_STROBE_ENABLE ; 
 struct rv7xx_power_info* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static u8 FUNC3(struct amdgpu_device *adev, u32 mclk)
{
	struct rv7xx_power_info *pi = FUNC0(adev);
	bool strobe_mode = false;
	u8 result = 0;

	if (mclk <= pi->mclk_strobe_mode_threshold)
		strobe_mode = true;

	if (adev->gmc.vram_type == AMDGPU_VRAM_TYPE_GDDR5)
		result = FUNC2(mclk, strobe_mode);
	else
		result = FUNC1(mclk);

	if (strobe_mode)
		result |= SISLANDS_SMC_STROBE_ENABLE;

	return result;
}