#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_pins; int /*<<< orphan*/ * pin; } ;
struct TYPE_6__ {TYPE_2__ audio; } ;
struct TYPE_4__ {int /*<<< orphan*/  default_dispclk; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ mode_info; TYPE_1__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_GCK_DFS ; 
 scalar_t__ CHIP_POLARIS10 ; 
 scalar_t__ CHIP_POLARIS11 ; 
 scalar_t__ CHIP_POLARIS12 ; 
 scalar_t__ CHIP_VEGAM ; 
 int /*<<< orphan*/  DCE_CLOCK_TYPE_DISPCLK ; 
 int /*<<< orphan*/  DCE_CLOCK_TYPE_DPREFCLK ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC9(void *handle)
{
	int i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC6(adev);

	/* disable vga render */
	FUNC8(adev, false);
	/* init dig PHYs, disp eng pll */
	FUNC0(adev);
	FUNC3(adev);
	if ((adev->asic_type == CHIP_POLARIS10) ||
	    (adev->asic_type == CHIP_POLARIS11) ||
	    (adev->asic_type == CHIP_POLARIS12) ||
	    (adev->asic_type == CHIP_VEGAM)) {
		FUNC1(adev, adev->clock.default_dispclk,
						   DCE_CLOCK_TYPE_DISPCLK, ATOM_GCK_DFS);
		FUNC1(adev, 0,
						   DCE_CLOCK_TYPE_DPREFCLK, ATOM_GCK_DFS);
	} else {
		FUNC2(adev, adev->clock.default_dispclk);
	}

	/* initialize hpd */
	FUNC5(adev);

	for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
		FUNC4(adev, &adev->mode_info.audio.pin[i], false);
	}

	FUNC7(adev);

	return 0;
}