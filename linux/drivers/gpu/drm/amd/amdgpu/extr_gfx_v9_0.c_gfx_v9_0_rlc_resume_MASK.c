#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* funcs; } ;
struct TYPE_8__ {TYPE_3__ rlc; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {int asic_type; TYPE_4__ gfx; TYPE_1__ firmware; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* start ) (struct amdgpu_device*) ;int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
#define  CHIP_RAVEN 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdgpu_lbpw ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmRLC_CGCG_CGLS_CTRL ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	int r;

	if (FUNC1(adev)) {
		FUNC3(adev);
		return 0;
	}

	adev->gfx.rlc.funcs->stop(adev);

	/* disable CG */
	FUNC0(GC, 0, mmRLC_CGCG_CGLS_CTRL, 0);

	FUNC4(adev);

	if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
		/* legacy rlc firmware loading */
		r = FUNC5(adev);
		if (r)
			return r;
	}

	switch (adev->asic_type) {
	case CHIP_RAVEN:
		if (amdgpu_lbpw == 0)
			FUNC2(adev, false);
		else
			FUNC2(adev, true);
		break;
	case CHIP_VEGA20:
		if (amdgpu_lbpw > 0)
			FUNC2(adev, true);
		else
			FUNC2(adev, false);
		break;
	default:
		break;
	}

	adev->gfx.rlc.funcs->start(adev);

	return 0;
}