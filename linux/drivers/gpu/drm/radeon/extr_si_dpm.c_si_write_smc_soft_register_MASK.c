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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct si_power_info {int /*<<< orphan*/  sram_end; scalar_t__ soft_regs_start; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct si_power_info* FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev,
				      u16 reg_offset, u32 value)
{
	struct si_power_info *si_pi = FUNC0(rdev);

	return FUNC1(rdev,
				       si_pi->soft_regs_start + reg_offset,
				       value, si_pi->sram_end);
}