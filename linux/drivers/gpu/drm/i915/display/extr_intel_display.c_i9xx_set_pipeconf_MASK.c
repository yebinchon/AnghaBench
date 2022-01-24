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
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_bpp; int /*<<< orphan*/  gamma_mode; scalar_t__ limited_color_range; TYPE_3__ base; scalar_t__ dither; scalar_t__ double_wide; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int PIPECONF_10BPC ; 
 int PIPECONF_6BPC ; 
 int PIPECONF_8BPC ; 
 int PIPECONF_COLOR_RANGE_SELECT ; 
 int PIPECONF_DITHER_EN ; 
 int PIPECONF_DITHER_TYPE_SP ; 
 int PIPECONF_DOUBLE_WIDE ; 
 int PIPECONF_ENABLE ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int PIPECONF_INTERLACE_W_FIELD_INDICATION ; 
 int PIPECONF_INTERLACE_W_SYNC_SHIFT ; 
 int PIPECONF_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC13(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC12(crtc->base.dev);
	u32 pipeconf;

	pipeconf = 0;

	/* we keep both pipes enabled on 830 */
	if (FUNC6(dev_priv))
		pipeconf |= FUNC1(FUNC8(crtc->pipe)) & PIPECONF_ENABLE;

	if (crtc_state->double_wide)
		pipeconf |= PIPECONF_DOUBLE_WIDE;

	/* only g4x and later have fancy bpc/dither controls */
	if (FUNC5(dev_priv) || FUNC7(dev_priv) ||
	    FUNC4(dev_priv)) {
		/* Bspec claims that we can't use dithering for 30bpp pipes. */
		if (crtc_state->dither && crtc_state->pipe_bpp != 30)
			pipeconf |= PIPECONF_DITHER_EN |
				    PIPECONF_DITHER_TYPE_SP;

		switch (crtc_state->pipe_bpp) {
		case 18:
			pipeconf |= PIPECONF_6BPC;
			break;
		case 24:
			pipeconf |= PIPECONF_8BPC;
			break;
		case 30:
			pipeconf |= PIPECONF_10BPC;
			break;
		default:
			/* Case prevented by intel_choose_pipe_bpp_dither. */
			FUNC0();
		}
	}

	if (crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
		if (FUNC3(dev_priv) < 4 ||
		    FUNC11(crtc_state, INTEL_OUTPUT_SDVO))
			pipeconf |= PIPECONF_INTERLACE_W_FIELD_INDICATION;
		else
			pipeconf |= PIPECONF_INTERLACE_W_SYNC_SHIFT;
	} else {
		pipeconf |= PIPECONF_PROGRESSIVE;
	}

	if ((FUNC7(dev_priv) || FUNC4(dev_priv)) &&
	     crtc_state->limited_color_range)
		pipeconf |= PIPECONF_COLOR_RANGE_SELECT;

	pipeconf |= FUNC9(crtc_state->gamma_mode);

	FUNC2(FUNC8(crtc->pipe), pipeconf);
	FUNC10(FUNC8(crtc->pipe));
}