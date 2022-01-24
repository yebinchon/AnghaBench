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
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_FIJI 129 
#define  CHIP_TONGA 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fiji_mgcg_cgcg_init ; 
 int /*<<< orphan*/  golden_settings_fiji_a10 ; 
 int /*<<< orphan*/  golden_settings_tonga_a11 ; 
 int /*<<< orphan*/  tonga_mgcg_cgcg_init ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_FIJI:
		FUNC1(adev,
							fiji_mgcg_cgcg_init,
							FUNC0(fiji_mgcg_cgcg_init));
		FUNC1(adev,
							golden_settings_fiji_a10,
							FUNC0(golden_settings_fiji_a10));
		break;
	case CHIP_TONGA:
		FUNC1(adev,
							tonga_mgcg_cgcg_init,
							FUNC0(tonga_mgcg_cgcg_init));
		FUNC1(adev,
							golden_settings_tonga_a11,
							FUNC0(golden_settings_tonga_a11));
		break;
	default:
		break;
	}
}