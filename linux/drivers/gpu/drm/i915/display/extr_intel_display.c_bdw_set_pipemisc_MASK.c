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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_bpp; scalar_t__ output_format; int active_planes; scalar_t__ dither; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ; 
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int PIPEMISC_DITHER_10_BPC ; 
 int PIPEMISC_DITHER_12_BPC ; 
 int PIPEMISC_DITHER_6_BPC ; 
 int PIPEMISC_DITHER_8_BPC ; 
 int PIPEMISC_DITHER_ENABLE ; 
 int PIPEMISC_DITHER_TYPE_SP ; 
 int PIPEMISC_HDR_MODE_PRECISION ; 
 int PIPEMISC_OUTPUT_COLORSPACE_YUV ; 
 int PIPEMISC_YUV420_ENABLE ; 
 int PIPEMISC_YUV420_MODE_FULL_BLEND ; 
 int /*<<< orphan*/  PLANE_CURSOR ; 
 int FUNC5 () ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC7(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	u32 val = 0;

	switch (crtc_state->pipe_bpp) {
	case 18:
		val |= PIPEMISC_DITHER_6_BPC;
		break;
	case 24:
		val |= PIPEMISC_DITHER_8_BPC;
		break;
	case 30:
		val |= PIPEMISC_DITHER_10_BPC;
		break;
	case 36:
		val |= PIPEMISC_DITHER_12_BPC;
		break;
	default:
		FUNC3(crtc_state->pipe_bpp);
		break;
	}

	if (crtc_state->dither)
		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;

	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
	    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
		val |= PIPEMISC_OUTPUT_COLORSPACE_YUV;

	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
		val |= PIPEMISC_YUV420_ENABLE |
			PIPEMISC_YUV420_MODE_FULL_BLEND;

	if (FUNC2(dev_priv) >= 11 &&
	    (crtc_state->active_planes & ~(FUNC5() |
					   FUNC0(PLANE_CURSOR))) == 0)
		val |= PIPEMISC_HDR_MODE_PRECISION;

	FUNC1(FUNC4(crtc->pipe), val);
}