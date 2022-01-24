#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_1__ mode_info; int /*<<< orphan*/  ddev; } ;
struct amdgpu_crtc {int crtc_id; int /*<<< orphan*/  base; int /*<<< orphan*/  vsync_timer_enabled; int /*<<< orphan*/ * connector; int /*<<< orphan*/ * encoder; int /*<<< orphan*/  pll_id; } ;

/* Variables and functions */
 int AMDGPUFB_CONN_LIMIT ; 
 int /*<<< orphan*/  AMDGPU_IRQ_STATE_DISABLE ; 
 int /*<<< orphan*/  ATOM_PPLL_INVALID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dce_virtual_crtc_funcs ; 
 int /*<<< orphan*/  dce_virtual_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct amdgpu_crtc* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev, int index)
{
	struct amdgpu_crtc *amdgpu_crtc;

	amdgpu_crtc = FUNC3(sizeof(struct amdgpu_crtc) +
			      (AMDGPUFB_CONN_LIMIT * sizeof(struct drm_connector *)), GFP_KERNEL);
	if (amdgpu_crtc == NULL)
		return -ENOMEM;

	FUNC1(adev->ddev, &amdgpu_crtc->base, &dce_virtual_crtc_funcs);

	FUNC2(&amdgpu_crtc->base, 256);
	amdgpu_crtc->crtc_id = index;
	adev->mode_info.crtcs[index] = amdgpu_crtc;

	amdgpu_crtc->pll_id = ATOM_PPLL_INVALID;
	amdgpu_crtc->encoder = NULL;
	amdgpu_crtc->connector = NULL;
	amdgpu_crtc->vsync_timer_enabled = AMDGPU_IRQ_STATE_DISABLE;
	FUNC0(&amdgpu_crtc->base, &dce_virtual_crtc_helper_funcs);

	return 0;
}