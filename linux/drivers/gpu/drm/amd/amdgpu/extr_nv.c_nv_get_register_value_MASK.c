#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  gb_addr_config; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGB_ADDR_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC3(struct amdgpu_device *adev,
				      bool indexed, u32 se_num,
				      u32 sh_num, u32 reg_offset)
{
	if (indexed) {
		return FUNC2(adev, se_num, sh_num, reg_offset);
	} else {
		if (reg_offset == FUNC1(GC, 0, mmGB_ADDR_CONFIG))
			return adev->gfx.config.gb_addr_config;
		return FUNC0(reg_offset);
	}
}