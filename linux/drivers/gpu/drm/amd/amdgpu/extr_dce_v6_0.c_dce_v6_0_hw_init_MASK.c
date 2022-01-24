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
struct amdgpu_device {TYPE_3__ mode_info; TYPE_1__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	int i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* disable vga render */
	FUNC5(adev, false);
	/* init dig PHYs, disp eng pll */
	FUNC1(adev);
	FUNC0(adev, adev->clock.default_dispclk);

	/* initialize hpd */
	FUNC3(adev);

	for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
		FUNC2(adev, &adev->mode_info.audio.pin[i], false);
	}

	FUNC4(adev);

	return 0;
}