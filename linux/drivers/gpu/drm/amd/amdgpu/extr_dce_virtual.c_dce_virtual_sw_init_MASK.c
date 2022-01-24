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
struct TYPE_7__ {int num_crtc; int mode_config_initialized; } ;
struct TYPE_5__ {int /*<<< orphan*/  aper_base; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_4__* ddev; TYPE_1__ gmc; int /*<<< orphan*/  crtc_irq; } ;
struct TYPE_6__ {int max_width; int max_height; int preferred_depth; int prefer_shadow; int /*<<< orphan*/  fb_base; int /*<<< orphan*/ * funcs; } ;
struct TYPE_8__ {TYPE_2__ mode_config; scalar_t__ max_vblank_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 int /*<<< orphan*/  VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  amdgpu_mode_funcs ; 
 int FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	int r, i;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER, &adev->crtc_irq);
	if (r)
		return r;

	adev->ddev->max_vblank_count = 0;

	adev->ddev->mode_config.funcs = &amdgpu_mode_funcs;

	adev->ddev->mode_config.max_width = 16384;
	adev->ddev->mode_config.max_height = 16384;

	adev->ddev->mode_config.preferred_depth = 24;
	adev->ddev->mode_config.prefer_shadow = 1;

	adev->ddev->mode_config.fb_base = adev->gmc.aper_base;

	r = FUNC0(adev);
	if (r)
		return r;

	adev->ddev->mode_config.max_width = 16384;
	adev->ddev->mode_config.max_height = 16384;

	/* allocate crtcs, encoders, connectors */
	for (i = 0; i < adev->mode_info.num_crtc; i++) {
		r = FUNC3(adev, i);
		if (r)
			return r;
		r = FUNC2(adev, i);
		if (r)
			return r;
	}

	FUNC4(adev->ddev);

	adev->mode_info.mode_config_initialized = true;
	return 0;
}