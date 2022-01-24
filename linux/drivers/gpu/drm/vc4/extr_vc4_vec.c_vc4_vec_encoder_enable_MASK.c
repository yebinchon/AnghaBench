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
struct vc4_vec_encoder {struct vc4_vec* vec; } ;
struct vc4_vec {TYPE_2__* tv_mode; int /*<<< orphan*/  clock; TYPE_1__* pdev; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mode_set ) (struct vc4_vec*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  VEC_CFG ; 
 int VEC_CFG_VEC_EN ; 
 int /*<<< orphan*/  VEC_CLMP0_END ; 
 int /*<<< orphan*/  VEC_CLMP0_START ; 
 int /*<<< orphan*/  VEC_CONFIG2 ; 
 int VEC_CONFIG2_RGB_DIG_DIS ; 
 int VEC_CONFIG2_UV_DIG_DIS ; 
 int /*<<< orphan*/  VEC_CONFIG3 ; 
 int VEC_CONFIG3_HORIZ_LEN_STD ; 
 int /*<<< orphan*/  VEC_DAC_CONFIG ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VEC_DAC_MISC ; 
 int VEC_DAC_MISC_DAC_RST_N ; 
 int VEC_DAC_MISC_VID_ACT ; 
 int /*<<< orphan*/  VEC_MASK0 ; 
 int /*<<< orphan*/  VEC_SCHPH ; 
 int /*<<< orphan*/  VEC_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VEC_WSE_CONTROL ; 
 int /*<<< orphan*/  VEC_WSE_RESET ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vc4_vec*) ; 
 struct vc4_vec_encoder* FUNC9 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder)
{
	struct vc4_vec_encoder *vc4_vec_encoder = FUNC9(encoder);
	struct vc4_vec *vec = vc4_vec_encoder->vec;
	int ret;

	ret = FUNC7(&vec->pdev->dev);
	if (ret < 0) {
		FUNC0("Failed to retain power domain: %d\n", ret);
		return;
	}

	/*
	 * We need to set the clock rate each time we enable the encoder
	 * because there's a chance we share the same parent with the HDMI
	 * clock, and both drivers are requesting different rates.
	 * The good news is, these 2 encoders cannot be enabled at the same
	 * time, thus preventing incompatible rate requests.
	 */
	ret = FUNC6(vec->clock, 108000000);
	if (ret) {
		FUNC0("Failed to set clock rate: %d\n", ret);
		return;
	}

	ret = FUNC5(vec->clock);
	if (ret) {
		FUNC0("Failed to turn on core clock: %d\n", ret);
		return;
	}

	/* Reset the different blocks */
	FUNC4(VEC_WSE_RESET, 1);
	FUNC4(VEC_SOFT_RESET, 1);

	/* Disable the CGSM-A and WSE blocks */
	FUNC4(VEC_WSE_CONTROL, 0);

	/* Write config common to all modes. */

	/*
	 * Color subcarrier phase: phase = 360 * SCHPH / 256.
	 * 0x28 <=> 39.375 deg.
	 */
	FUNC4(VEC_SCHPH, 0x28);

	/*
	 * Reset to default values.
	 */
	FUNC4(VEC_CLMP0_START, 0xac);
	FUNC4(VEC_CLMP0_END, 0xec);
	FUNC4(VEC_CONFIG2,
		  VEC_CONFIG2_UV_DIG_DIS | VEC_CONFIG2_RGB_DIG_DIS);
	FUNC4(VEC_CONFIG3, VEC_CONFIG3_HORIZ_LEN_STD);
	FUNC4(VEC_DAC_CONFIG,
		  FUNC1(0xc) |
		  FUNC2(0xc) |
		  FUNC3(0x46));

	/* Mask all interrupts. */
	FUNC4(VEC_MASK0, 0);

	vec->tv_mode->mode_set(vec);

	FUNC4(VEC_DAC_MISC,
		  VEC_DAC_MISC_VID_ACT | VEC_DAC_MISC_DAC_RST_N);
	FUNC4(VEC_CFG, VEC_CFG_VEC_EN);
}