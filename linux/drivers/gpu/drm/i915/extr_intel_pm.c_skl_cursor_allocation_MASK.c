#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skl_wm_params {int dummy; } ;
struct skl_wm_level {int min_ddb_alloc; } ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  pixel_rate; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/  DRM_FORMAT_MOD_LINEAR ; 
 int /*<<< orphan*/  DRM_MODE_ROTATE_0 ; 
 int U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 unsigned int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*,int,struct skl_wm_params*,struct skl_wm_level*,struct skl_wm_level*) ; 
 int FUNC5 (struct intel_crtc_state const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skl_wm_params*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC7(const struct intel_crtc_state *crtc_state,
		      int num_active)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc_state->base.crtc->dev);
	int level, max_level = FUNC2(dev_priv);
	struct skl_wm_level wm = {};
	int ret, min_ddb_alloc = 0;
	struct skl_wm_params wp;

	ret = FUNC5(crtc_state, 256,
				    FUNC1(DRM_FORMAT_ARGB8888),
				    DRM_FORMAT_MOD_LINEAR,
				    DRM_MODE_ROTATE_0,
				    crtc_state->pixel_rate, &wp, 0);
	FUNC0(ret);

	for (level = 0; level <= max_level; level++) {
		FUNC4(crtc_state, level, &wp, &wm, &wm);
		if (wm.min_ddb_alloc == U16_MAX)
			break;

		min_ddb_alloc = wm.min_ddb_alloc;
	}

	return FUNC3(num_active == 1 ? 32 : 8, min_ddb_alloc);
}