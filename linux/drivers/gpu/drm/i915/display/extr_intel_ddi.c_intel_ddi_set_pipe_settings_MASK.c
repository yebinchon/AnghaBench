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
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; scalar_t__ output_format; scalar_t__ limited_color_range; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ; 
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TRANS_MSA_10_BPC ; 
 int TRANS_MSA_12_BPC ; 
 int TRANS_MSA_6_BPC ; 
 int TRANS_MSA_8_BPC ; 
 int TRANS_MSA_CEA_RANGE ; 
 int TRANS_MSA_CLRSP_YCBCR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TRANS_MSA_SAMPLING_444 ; 
 int TRANS_MSA_SYNC_CLK ; 
 int TRANS_MSA_USE_VSC_SDP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC5(crtc->base.dev);
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	u32 temp;

	if (!FUNC4(crtc_state))
		return;

	FUNC3(FUNC7(cpu_transcoder));

	temp = TRANS_MSA_SYNC_CLK;

	if (crtc_state->limited_color_range)
		temp |= TRANS_MSA_CEA_RANGE;

	switch (crtc_state->pipe_bpp) {
	case 18:
		temp |= TRANS_MSA_6_BPC;
		break;
	case 24:
		temp |= TRANS_MSA_8_BPC;
		break;
	case 30:
		temp |= TRANS_MSA_10_BPC;
		break;
	case 36:
		temp |= TRANS_MSA_12_BPC;
		break;
	default:
		FUNC1(crtc_state->pipe_bpp);
		break;
	}

	/*
	 * As per DP 1.2 spec section 2.3.4.3 while sending
	 * YCBCR 444 signals we should program MSA MISC1/0 fields with
	 * colorspace information. The output colorspace encoding is BT601.
	 */
	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
		temp |= TRANS_MSA_SAMPLING_444 | TRANS_MSA_CLRSP_YCBCR;
	/*
	 * As per DP 1.4a spec section 2.2.4.3 [MSA Field for Indication
	 * of Color Encoding Format and Content Color Gamut] while sending
	 * YCBCR 420 signals we should program MSA MISC1 fields which
	 * indicate VSC SDP for the Pixel Encoding/Colorimetry Format.
	 */
	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
		temp |= TRANS_MSA_USE_VSC_SDP;
	FUNC0(FUNC2(cpu_transcoder), temp);
}