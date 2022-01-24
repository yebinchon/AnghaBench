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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct kv_power_info {int /*<<< orphan*/  sram_end; void* fps_low_t; scalar_t__ dpm_table_start; void* fps_high_t; scalar_t__ caps_fps; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FpsHighT ; 
 int /*<<< orphan*/  FpsLowT ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC2(adev);
	int ret = 0;

	if (pi->caps_fps) {
		u16 tmp;

		tmp = 45;
		pi->fps_high_t = FUNC1(tmp);
		ret = FUNC0(adev,
					   pi->dpm_table_start +
					   FUNC3(SMU7_Fusion_DpmTable, FpsHighT),
					   (u8 *)&pi->fps_high_t,
					   sizeof(u16), pi->sram_end);

		tmp = 30;
		pi->fps_low_t = FUNC1(tmp);

		ret = FUNC0(adev,
					   pi->dpm_table_start +
					   FUNC3(SMU7_Fusion_DpmTable, FpsLowT),
					   (u8 *)&pi->fps_low_t,
					   sizeof(u16), pi->sram_end);

	}
	return ret;
}