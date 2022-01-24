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
struct amdgpu_device {scalar_t__ asic_type; int last_mm_index; int rio_mem_size; scalar_t__ rio_mem; } ;

/* Variables and functions */
 scalar_t__ CHIP_VEGA10 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int mmMM_DATA ; 
 int mmMM_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct amdgpu_device *adev, u32 reg, u32 v)
{
	if (adev->asic_type >= CHIP_VEGA10 && reg == 0) {
		adev->last_mm_index = v;
	}

	if ((reg * 4) < adev->rio_mem_size)
		FUNC0(v, adev->rio_mem + (reg * 4));
	else {
		FUNC0((reg * 4), adev->rio_mem + (mmMM_INDEX * 4));
		FUNC0(v, adev->rio_mem + (mmMM_DATA * 4));
	}

	if (adev->asic_type >= CHIP_VEGA10 && reg == 1 && adev->last_mm_index == 0x5702C) {
		FUNC1(500);
	}
}