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
struct smu_context {int /*<<< orphan*/ * funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
#define  CHIP_ARCTURUS 132 
#define  CHIP_NAVI10 131 
#define  CHIP_NAVI12 130 
#define  CHIP_NAVI14 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC0 (struct smu_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct smu_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  smu_v11_0_funcs ; 
 int /*<<< orphan*/  FUNC3 (struct smu_context*) ; 

void FUNC4(struct smu_context *smu)
{
	struct amdgpu_device *adev = smu->adev;

	smu->funcs = &smu_v11_0_funcs;
	switch (adev->asic_type) {
	case CHIP_VEGA20:
		FUNC3(smu);
		break;
	case CHIP_ARCTURUS:
		FUNC0(smu);
		break;
	case CHIP_NAVI10:
	case CHIP_NAVI14:
	case CHIP_NAVI12:
		FUNC1(smu);
		break;
	default:
		FUNC2("Unknown asic for smu11\n");
	}
}