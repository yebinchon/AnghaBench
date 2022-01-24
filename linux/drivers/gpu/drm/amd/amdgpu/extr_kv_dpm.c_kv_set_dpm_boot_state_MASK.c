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
struct kv_power_info {int /*<<< orphan*/  sram_end; int /*<<< orphan*/  graphics_boot_level; scalar_t__ dpm_table_start; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GraphicsBootLevel ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC1(adev);
	int ret;

	ret = FUNC0(adev,
				   pi->dpm_table_start +
				   FUNC2(SMU7_Fusion_DpmTable, GraphicsBootLevel),
				   &pi->graphics_boot_level,
				   sizeof(u8), pi->sram_end);

	return ret;
}