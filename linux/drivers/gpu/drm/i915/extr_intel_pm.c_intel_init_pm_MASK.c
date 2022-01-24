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
struct TYPE_5__ {int /*<<< orphan*/  get_fifo_size; int /*<<< orphan*/ * update_wm; int /*<<< orphan*/  optimize_watermarks; int /*<<< orphan*/  initial_watermarks; int /*<<< orphan*/  compute_intermediate_wm; int /*<<< orphan*/  compute_pipe_wm; int /*<<< orphan*/  atomic_update_watermarks; int /*<<< orphan*/  compute_global_watermarks; } ;
struct TYPE_4__ {scalar_t__* cur_latency; scalar_t__* spr_latency; scalar_t__* pri_latency; } ;
struct drm_i915_private {int is_ddr3; TYPE_2__ display; int /*<<< orphan*/  mem_freq; int /*<<< orphan*/  fsb_freq; TYPE_1__ wm; } ;
struct TYPE_6__ {int num_pipes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 TYPE_3__* FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  g4x_compute_intermediate_wm ; 
 int /*<<< orphan*/  g4x_compute_pipe_wm ; 
 int /*<<< orphan*/  g4x_initial_watermarks ; 
 int /*<<< orphan*/  g4x_optimize_watermarks ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  i830_get_fifo_size ; 
 int /*<<< orphan*/  i845_get_fifo_size ; 
 int /*<<< orphan*/ * i845_update_wm ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/ * i965_update_wm ; 
 int /*<<< orphan*/  i9xx_get_fifo_size ; 
 void* i9xx_update_wm ; 
 int /*<<< orphan*/  ilk_compute_intermediate_wm ; 
 int /*<<< orphan*/  ilk_compute_pipe_wm ; 
 int /*<<< orphan*/  ilk_initial_watermarks ; 
 int /*<<< orphan*/  ilk_optimize_watermarks ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/ * pineview_update_wm ; 
 int /*<<< orphan*/  skl_atomic_update_crtc_wm ; 
 int /*<<< orphan*/  skl_compute_wm ; 
 int /*<<< orphan*/  skl_initial_wm ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  vlv_atomic_update_fifo ; 
 int /*<<< orphan*/  vlv_compute_intermediate_wm ; 
 int /*<<< orphan*/  vlv_compute_pipe_wm ; 
 int /*<<< orphan*/  vlv_initial_watermarks ; 
 int /*<<< orphan*/  vlv_optimize_watermarks ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*) ; 

void FUNC20(struct drm_i915_private *dev_priv)
{
	/* For cxsr */
	if (FUNC10(dev_priv))
		FUNC14(dev_priv);
	else if (FUNC8(dev_priv, 5))
		FUNC13(dev_priv);

	/* For FIFO watermark updates */
	if (FUNC4(dev_priv) >= 9) {
		FUNC18(dev_priv);
		dev_priv->display.initial_watermarks = skl_initial_wm;
		dev_priv->display.atomic_update_watermarks = skl_atomic_update_crtc_wm;
		dev_priv->display.compute_global_watermarks = skl_compute_wm;
	} else if (FUNC3(dev_priv)) {
		FUNC15(dev_priv);

		if ((FUNC8(dev_priv, 5) && dev_priv->wm.pri_latency[1] &&
		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
		    (!FUNC8(dev_priv, 5) && dev_priv->wm.pri_latency[0] &&
		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
			dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
			dev_priv->display.compute_intermediate_wm =
				ilk_compute_intermediate_wm;
			dev_priv->display.initial_watermarks =
				ilk_initial_watermarks;
			dev_priv->display.optimize_watermarks =
				ilk_optimize_watermarks;
		} else {
			FUNC0("Failed to read display plane latency. "
				      "Disable CxSR\n");
		}
	} else if (FUNC11(dev_priv) || FUNC6(dev_priv)) {
		FUNC19(dev_priv);
		dev_priv->display.compute_pipe_wm = vlv_compute_pipe_wm;
		dev_priv->display.compute_intermediate_wm = vlv_compute_intermediate_wm;
		dev_priv->display.initial_watermarks = vlv_initial_watermarks;
		dev_priv->display.optimize_watermarks = vlv_optimize_watermarks;
		dev_priv->display.atomic_update_watermarks = vlv_atomic_update_fifo;
	} else if (FUNC7(dev_priv)) {
		FUNC12(dev_priv);
		dev_priv->display.compute_pipe_wm = g4x_compute_pipe_wm;
		dev_priv->display.compute_intermediate_wm = g4x_compute_intermediate_wm;
		dev_priv->display.initial_watermarks = g4x_initial_watermarks;
		dev_priv->display.optimize_watermarks = g4x_optimize_watermarks;
	} else if (FUNC10(dev_priv)) {
		if (!FUNC16(!FUNC9(dev_priv),
					    dev_priv->is_ddr3,
					    dev_priv->fsb_freq,
					    dev_priv->mem_freq)) {
			FUNC2("failed to find known CxSR latency "
				 "(found ddr%s fsb freq %d, mem freq %d), "
				 "disabling CxSR\n",
				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
				 dev_priv->fsb_freq, dev_priv->mem_freq);
			/* Disable CxSR and never update its watermark again */
			FUNC17(dev_priv, false);
			dev_priv->display.update_wm = NULL;
		} else
			dev_priv->display.update_wm = pineview_update_wm;
	} else if (FUNC8(dev_priv, 4)) {
		dev_priv->display.update_wm = i965_update_wm;
	} else if (FUNC8(dev_priv, 3)) {
		dev_priv->display.update_wm = i9xx_update_wm;
		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
	} else if (FUNC8(dev_priv, 2)) {
		if (FUNC5(dev_priv)->num_pipes == 1) {
			dev_priv->display.update_wm = i845_update_wm;
			dev_priv->display.get_fifo_size = i845_get_fifo_size;
		} else {
			dev_priv->display.update_wm = i9xx_update_wm;
			dev_priv->display.get_fifo_size = i830_get_fifo_size;
		}
	} else {
		FUNC1("unexpected fall-through in intel_init_pm\n");
	}
}