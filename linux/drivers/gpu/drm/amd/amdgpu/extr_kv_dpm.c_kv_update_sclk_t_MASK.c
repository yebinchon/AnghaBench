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
typedef  scalar_t__ u32 ;
struct kv_power_info {int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; int /*<<< orphan*/  low_sclk_interrupt_t; scalar_t__ caps_sclk_throttle_low_notification; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LowSclkInterruptT ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC2(adev);
	u32 low_sclk_interrupt_t = 0;
	int ret = 0;

	if (pi->caps_sclk_throttle_low_notification) {
		low_sclk_interrupt_t = FUNC1(pi->low_sclk_interrupt_t);

		ret = FUNC0(adev,
					   pi->dpm_table_start +
					   FUNC3(SMU7_Fusion_DpmTable, LowSclkInterruptT),
					   (u8 *)&low_sclk_interrupt_t,
					   sizeof(u32), pi->sram_end);
	}
	return ret;
}