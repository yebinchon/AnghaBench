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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
				      u16 reg_offset, u32 value)
{
	struct si_power_info *si_pi = FUNC1(adev);

	return FUNC0(adev,
					      si_pi->soft_regs_start + reg_offset,
					      value, si_pi->sram_end);
}