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
struct radeon_device {int dummy; } ;
struct kv_power_info {int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; int /*<<< orphan*/  low_sclk_interrupt_t; scalar_t__ caps_sclk_throttle_low_notification; } ;

/* Variables and functions */
 int /*<<< orphan*/  LowSclkInterruptT ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC2(rdev);
	u32 low_sclk_interrupt_t = 0;
	int ret = 0;

	if (pi->caps_sclk_throttle_low_notification) {
		low_sclk_interrupt_t = FUNC0(pi->low_sclk_interrupt_t);

		ret = FUNC1(rdev,
					   pi->dpm_table_start +
					   FUNC3(SMU7_Fusion_DpmTable, LowSclkInterruptT),
					   (u8 *)&low_sclk_interrupt_t,
					   sizeof(u32), pi->sram_end);
	}
	return ret;
}