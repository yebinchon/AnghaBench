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
struct TYPE_2__ {int /*<<< orphan*/  update_crtcs; int /*<<< orphan*/  fdi_link_train; void* crtc_disable; void* crtc_enable; void* crtc_compute_clock; void* get_initial_plane_config; void* get_pipe_config; } ;
struct drm_i915_private {TYPE_1__ display; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 void* chv_crtc_compute_clock ; 
 void* g4x_crtc_compute_clock ; 
 int /*<<< orphan*/  gen6_fdi_link_train ; 
 void* haswell_crtc_compute_clock ; 
 void* haswell_crtc_disable ; 
 void* haswell_crtc_enable ; 
 void* haswell_get_pipe_config ; 
 int /*<<< orphan*/  hsw_fdi_link_train ; 
 void* i8xx_crtc_compute_clock ; 
 void* i9xx_crtc_compute_clock ; 
 void* i9xx_crtc_disable ; 
 void* i9xx_crtc_enable ; 
 void* i9xx_get_initial_plane_config ; 
 void* i9xx_get_pipe_config ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  intel_update_crtcs ; 
 void* ironlake_crtc_compute_clock ; 
 void* ironlake_crtc_disable ; 
 void* ironlake_crtc_enable ; 
 int /*<<< orphan*/  ironlake_fdi_link_train ; 
 void* ironlake_get_pipe_config ; 
 int /*<<< orphan*/  ivb_manual_fdi_link_train ; 
 void* pnv_crtc_compute_clock ; 
 int /*<<< orphan*/  skl_update_crtcs ; 
 void* skylake_get_initial_plane_config ; 
 void* valleyview_crtc_enable ; 
 void* vlv_crtc_compute_clock ; 

void FUNC12(struct drm_i915_private *dev_priv)
{
	FUNC11(dev_priv);

	if (FUNC2(dev_priv) >= 9) {
		dev_priv->display.get_pipe_config = haswell_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			skylake_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock =
			haswell_crtc_compute_clock;
		dev_priv->display.crtc_enable = haswell_crtc_enable;
		dev_priv->display.crtc_disable = haswell_crtc_disable;
	} else if (FUNC0(dev_priv)) {
		dev_priv->display.get_pipe_config = haswell_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock =
			haswell_crtc_compute_clock;
		dev_priv->display.crtc_enable = haswell_crtc_enable;
		dev_priv->display.crtc_disable = haswell_crtc_disable;
	} else if (FUNC1(dev_priv)) {
		dev_priv->display.get_pipe_config = ironlake_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock =
			ironlake_crtc_compute_clock;
		dev_priv->display.crtc_enable = ironlake_crtc_enable;
		dev_priv->display.crtc_disable = ironlake_crtc_disable;
	} else if (FUNC4(dev_priv)) {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = chv_crtc_compute_clock;
		dev_priv->display.crtc_enable = valleyview_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	} else if (FUNC10(dev_priv)) {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = vlv_crtc_compute_clock;
		dev_priv->display.crtc_enable = valleyview_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	} else if (FUNC5(dev_priv)) {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
		dev_priv->display.crtc_enable = i9xx_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	} else if (FUNC9(dev_priv)) {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
		dev_priv->display.crtc_enable = i9xx_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	} else if (!FUNC6(dev_priv, 2)) {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
		dev_priv->display.crtc_enable = i9xx_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	} else {
		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
		dev_priv->display.get_initial_plane_config =
			i9xx_get_initial_plane_config;
		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
		dev_priv->display.crtc_enable = i9xx_crtc_enable;
		dev_priv->display.crtc_disable = i9xx_crtc_disable;
	}

	if (FUNC6(dev_priv, 5)) {
		dev_priv->display.fdi_link_train = ironlake_fdi_link_train;
	} else if (FUNC6(dev_priv, 6)) {
		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
	} else if (FUNC8(dev_priv)) {
		/* FIXME: detect B0+ stepping and use auto training */
		dev_priv->display.fdi_link_train = ivb_manual_fdi_link_train;
	} else if (FUNC7(dev_priv) || FUNC3(dev_priv)) {
		dev_priv->display.fdi_link_train = hsw_fdi_link_train;
	}

	if (FUNC2(dev_priv) >= 9)
		dev_priv->display.update_crtcs = skl_update_crtcs;
	else
		dev_priv->display.update_crtcs = intel_update_crtcs;
}