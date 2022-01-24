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
struct TYPE_8__ {scalar_t__ gfx_off_req_count; int gfx_off_state; int /*<<< orphan*/  gfx_off_mutex; int /*<<< orphan*/  gfx_off_delay_work; } ;
struct TYPE_7__ {TYPE_2__* pp_funcs; } ;
struct TYPE_5__ {int pp_feature; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_3__ powerplay; TYPE_1__ pm; } ;
struct TYPE_6__ {int /*<<< orphan*/  set_powergating_by_smu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_GFX ; 
 int /*<<< orphan*/  GFX_OFF_DELAY_ENABLE ; 
 int PP_GFXOFF_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct amdgpu_device *adev, bool enable)
{
	if (!(adev->pm.pp_feature & PP_GFXOFF_MASK))
		return;

	if (!FUNC1(adev) &&
	    (!adev->powerplay.pp_funcs ||
	     !adev->powerplay.pp_funcs->set_powergating_by_smu))
		return;


	FUNC2(&adev->gfx.gfx_off_mutex);

	if (!enable)
		adev->gfx.gfx_off_req_count++;
	else if (adev->gfx.gfx_off_req_count > 0)
		adev->gfx.gfx_off_req_count--;

	if (enable && !adev->gfx.gfx_off_state && !adev->gfx.gfx_off_req_count) {
		FUNC4(&adev->gfx.gfx_off_delay_work, GFX_OFF_DELAY_ENABLE);
	} else if (!enable && adev->gfx.gfx_off_state) {
		if (!FUNC0(adev, AMD_IP_BLOCK_TYPE_GFX, false))
			adev->gfx.gfx_off_state = false;
	}

	FUNC3(&adev->gfx.gfx_off_mutex);
}