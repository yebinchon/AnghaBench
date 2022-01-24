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
typedef  scalar_t__ u32 ;
struct amdgpu_device {int asic_type; int rev_id; } ;

/* Variables and functions */
 scalar_t__ const FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  golden_settings_gc_9_0 ; 
 int /*<<< orphan*/  golden_settings_gc_9_0_vg10 ; 
 int /*<<< orphan*/  golden_settings_gc_9_0_vg20 ; 
 int /*<<< orphan*/  golden_settings_gc_9_1 ; 
 int /*<<< orphan*/  golden_settings_gc_9_1_rn ; 
 int /*<<< orphan*/  golden_settings_gc_9_1_rv1 ; 
 int /*<<< orphan*/  golden_settings_gc_9_1_rv2 ; 
 int /*<<< orphan*/  golden_settings_gc_9_2_1 ; 
 int /*<<< orphan*/  golden_settings_gc_9_2_1_vg12 ; 
 int /*<<< orphan*/  golden_settings_gc_9_4_1_arct ; 
 int /*<<< orphan*/  golden_settings_gc_9_x_common ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,scalar_t__ const) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_VEGA10:
		FUNC1(adev,
						golden_settings_gc_9_0,
						FUNC0(golden_settings_gc_9_0));
		FUNC1(adev,
						golden_settings_gc_9_0_vg10,
						FUNC0(golden_settings_gc_9_0_vg10));
		break;
	case CHIP_VEGA12:
		FUNC1(adev,
						golden_settings_gc_9_2_1,
						FUNC0(golden_settings_gc_9_2_1));
		FUNC1(adev,
						golden_settings_gc_9_2_1_vg12,
						FUNC0(golden_settings_gc_9_2_1_vg12));
		break;
	case CHIP_VEGA20:
		FUNC1(adev,
						golden_settings_gc_9_0,
						FUNC0(golden_settings_gc_9_0));
		FUNC1(adev,
						golden_settings_gc_9_0_vg20,
						FUNC0(golden_settings_gc_9_0_vg20));
		break;
	case CHIP_ARCTURUS:
		FUNC1(adev,
						golden_settings_gc_9_4_1_arct,
						FUNC0(golden_settings_gc_9_4_1_arct));
		break;
	case CHIP_RAVEN:
		FUNC1(adev, golden_settings_gc_9_1,
						FUNC0(golden_settings_gc_9_1));
		if (adev->rev_id >= 8)
			FUNC1(adev,
							golden_settings_gc_9_1_rv2,
							FUNC0(golden_settings_gc_9_1_rv2));
		else
			FUNC1(adev,
							golden_settings_gc_9_1_rv1,
							FUNC0(golden_settings_gc_9_1_rv1));
		break;
	 case CHIP_RENOIR:
		FUNC1(adev,
						golden_settings_gc_9_1_rn,
						FUNC0(golden_settings_gc_9_1_rn));
		return; /* for renoir, don't need common goldensetting */
	default:
		break;
	}

	if (adev->asic_type != CHIP_ARCTURUS)
		FUNC1(adev, golden_settings_gc_9_x_common,
						(const u32)FUNC0(golden_settings_gc_9_x_common));
}