#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct smu_dpm_context {int /*<<< orphan*/  dpm_level; } ;
struct TYPE_10__ {scalar_t__ ready; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_15__ {int vrefresh; scalar_t__ min_vblank_time; int /*<<< orphan*/  num_display; } ;
struct TYPE_11__ {int /*<<< orphan*/  new_active_crtc_count; } ;
struct TYPE_14__ {int /*<<< orphan*/  mutex; TYPE_7__ pm_display_cfg; TYPE_3__ dpm; int /*<<< orphan*/  dpm_enabled; } ;
struct TYPE_13__ {int /*<<< orphan*/  pp_handle; TYPE_4__* pp_funcs; } ;
struct TYPE_16__ {struct smu_dpm_context smu_dpm; } ;
struct TYPE_9__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_6__ pm; TYPE_5__ powerplay; TYPE_8__ smu; struct amdgpu_ring** rings; TYPE_1__ mode_info; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* display_configuration_change ) (int /*<<< orphan*/ ,TYPE_7__*) ;scalar_t__ dispatch_tasks; } ;

/* Variables and functions */
 int AMDGPU_MAX_RINGS ; 
 int /*<<< orphan*/  AMD_PP_TASK_DISPLAY_CONFIG_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 scalar_t__ FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_7__*) ; 

void FUNC13(struct amdgpu_device *adev)
{
	int i = 0;

	if (!adev->pm.dpm_enabled)
		return;

	if (adev->mode_info.num_crtc)
		FUNC1(adev);

	for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
		struct amdgpu_ring *ring = adev->rings[i];
		if (ring && ring->sched.ready)
			FUNC7(ring);
	}

	if (FUNC8(adev)) {
		struct smu_dpm_context *smu_dpm = &adev->smu.smu_dpm;
		FUNC11(&adev->smu,
				smu_dpm->dpm_level,
				AMD_PP_TASK_DISPLAY_CONFIG_CHANGE);
	} else {
		if (adev->powerplay.pp_funcs->dispatch_tasks) {
			if (!FUNC0(adev)) {
				FUNC9(&adev->pm.mutex);
				FUNC4(adev);
				adev->pm.pm_display_cfg.num_display = adev->pm.dpm.new_active_crtc_count;
				adev->pm.pm_display_cfg.vrefresh = FUNC6(adev);
				adev->pm.pm_display_cfg.min_vblank_time = FUNC5(adev);
				/* we have issues with mclk switching with refresh rates over 120 hz on the non-DC code. */
				if (adev->pm.pm_display_cfg.vrefresh > 120)
					adev->pm.pm_display_cfg.min_vblank_time = 0;
				if (adev->powerplay.pp_funcs->display_configuration_change)
					adev->powerplay.pp_funcs->display_configuration_change(
									adev->powerplay.pp_handle,
									&adev->pm.pm_display_cfg);
				FUNC10(&adev->pm.mutex);
			}
			FUNC3(adev, AMD_PP_TASK_DISPLAY_CONFIG_CHANGE, NULL);
		} else {
			FUNC9(&adev->pm.mutex);
			FUNC4(adev);
			FUNC2(adev);
			FUNC10(&adev->pm.mutex);
		}
	}
}