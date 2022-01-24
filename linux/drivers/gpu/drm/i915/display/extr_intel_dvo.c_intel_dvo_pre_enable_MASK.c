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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dvo_srcdim_reg; int /*<<< orphan*/  dvo_reg; } ;
struct intel_dvo {TYPE_3__ dev; } ;
struct drm_display_mode {int flags; int crtc_hdisplay; int crtc_vdisplay; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int DVO_BLANK_ACTIVE_HIGH ; 
 int DVO_BORDER_ENABLE ; 
 int DVO_DATA_ORDER_FP ; 
 int DVO_DATA_ORDER_GBRG ; 
 int DVO_HSYNC_ACTIVE_HIGH ; 
 int FUNC0 (int) ; 
 int DVO_PIPE_STALL ; 
 int DVO_PRESERVE_MASK ; 
 int DVO_SRCDIM_HORIZONTAL_SHIFT ; 
 int DVO_SRCDIM_VERTICAL_SHIFT ; 
 int DVO_VSYNC_ACTIVE_HIGH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct intel_dvo* FUNC3 (struct intel_encoder*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct intel_encoder *encoder,
				 const struct intel_crtc_state *pipe_config,
				 const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC4(encoder->base.dev);
	struct intel_crtc *crtc = FUNC5(pipe_config->base.crtc);
	const struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
	struct intel_dvo *intel_dvo = FUNC3(encoder);
	int pipe = crtc->pipe;
	u32 dvo_val;
	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
	i915_reg_t dvo_srcdim_reg = intel_dvo->dev.dvo_srcdim_reg;

	/* Save the data order, since I don't know what it should be set to. */
	dvo_val = FUNC1(dvo_reg) &
		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
		   DVO_BLANK_ACTIVE_HIGH;

	dvo_val |= FUNC0(pipe);
	dvo_val |= DVO_PIPE_STALL;
	if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
		dvo_val |= DVO_HSYNC_ACTIVE_HIGH;
	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
		dvo_val |= DVO_VSYNC_ACTIVE_HIGH;

	/*I915_WRITE(DVOB_SRCDIM,
	  (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |
	  (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));*/
	FUNC2(dvo_srcdim_reg,
		   (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |
		   (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
	/*I915_WRITE(DVOB, dvo_val);*/
	FUNC2(dvo_reg, dvo_val);
}