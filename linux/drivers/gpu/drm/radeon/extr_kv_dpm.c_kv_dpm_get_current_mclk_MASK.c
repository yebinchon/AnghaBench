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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bootup_uma_clk; } ;
struct kv_power_info {TYPE_1__ sys_info; } ;

/* Variables and functions */
 struct kv_power_info* FUNC0 (struct radeon_device*) ; 

u32 FUNC1(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC0(rdev);

	return pi->sys_info.bootup_uma_clk;
}