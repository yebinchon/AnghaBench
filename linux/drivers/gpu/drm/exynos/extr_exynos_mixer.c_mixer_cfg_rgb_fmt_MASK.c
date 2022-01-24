#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mixer_context {int dummy; } ;
struct drm_display_mode {int vdisplay; } ;
typedef  enum hdmi_quantization_range { ____Placeholder_hdmi_quantization_range } hdmi_quantization_range ;

/* Variables and functions */
 int HDMI_QUANTIZATION_RANGE_FULL ; 
 int /*<<< orphan*/  MXR_CFG ; 
 int /*<<< orphan*/  MXR_CFG_QUANT_RANGE_FULL ; 
 int /*<<< orphan*/  MXR_CFG_QUANT_RANGE_LIMITED ; 
 int /*<<< orphan*/  MXR_CFG_RGB601 ; 
 int /*<<< orphan*/  MXR_CFG_RGB709 ; 
 int /*<<< orphan*/  MXR_CFG_RGB_FMT_MASK ; 
 int /*<<< orphan*/  MXR_CM_COEFF_CB ; 
 int /*<<< orphan*/  MXR_CM_COEFF_CR ; 
 int MXR_CM_COEFF_RGB_FULL ; 
 int /*<<< orphan*/  MXR_CM_COEFF_Y ; 
 int FUNC0 (double,double,double) ; 
 int FUNC1 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct mixer_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mixer_context *ctx, struct drm_display_mode *mode)
{
	enum hdmi_quantization_range range = FUNC1(mode);
	u32 val;

	if (mode->vdisplay < 720) {
		val = MXR_CFG_RGB601;
	} else {
		val = MXR_CFG_RGB709;

		/* Configure the BT.709 CSC matrix for full range RGB. */
		FUNC2(ctx, MXR_CM_COEFF_Y,
			FUNC0( 0.184,  0.614,  0.063) |
			MXR_CM_COEFF_RGB_FULL);
		FUNC2(ctx, MXR_CM_COEFF_CB,
			FUNC0(-0.102, -0.338,  0.440));
		FUNC2(ctx, MXR_CM_COEFF_CR,
			FUNC0( 0.440, -0.399, -0.040));
	}

	if (range == HDMI_QUANTIZATION_RANGE_FULL)
		val |= MXR_CFG_QUANT_RANGE_FULL;
	else
		val |= MXR_CFG_QUANT_RANGE_LIMITED;

	FUNC3(ctx, MXR_CFG, val, MXR_CFG_RGB_FMT_MASK);
}