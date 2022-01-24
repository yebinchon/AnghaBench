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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct scaling_taps {int h_taps; int h_taps_c; } ;
struct fixed31_32 {int dummy; } ;
struct dcn20_dwbc {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WBSCL_COEF_CHROMA_HORZ_FILTER ; 
 int /*<<< orphan*/  WBSCL_COEF_LUMA_HORZ_FILTER ; 
 int /*<<< orphan*/  WBSCL_HORZ_FILTER_INIT_CBCR ; 
 int /*<<< orphan*/  WBSCL_HORZ_FILTER_INIT_Y_RGB ; 
 int /*<<< orphan*/  WBSCL_HORZ_FILTER_SCALE_RATIO ; 
 int /*<<< orphan*/  WBSCL_H_INIT_FRAC_CBCR ; 
 int /*<<< orphan*/  WBSCL_H_INIT_FRAC_Y_RGB ; 
 int /*<<< orphan*/  WBSCL_H_INIT_INT_CBCR ; 
 int /*<<< orphan*/  WBSCL_H_INIT_INT_Y_RGB ; 
 int /*<<< orphan*/  WBSCL_H_NUM_OF_TAPS_CBCR ; 
 int /*<<< orphan*/  WBSCL_H_NUM_OF_TAPS_Y_RGB ; 
 int /*<<< orphan*/  WBSCL_H_SCALE_RATIO ; 
 int /*<<< orphan*/  WBSCL_TAP_CONTROL ; 
 struct fixed31_32 FUNC1 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC2 (struct fixed31_32,int) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32,int) ; 
 int FUNC4 (struct fixed31_32) ; 
 struct fixed31_32 FUNC5 (int,int) ; 
 struct fixed31_32 FUNC6 (int) ; 
 struct fixed31_32 FUNC7 (struct fixed31_32,int) ; 
 int FUNC8 (struct fixed31_32) ; 
 struct fixed31_32 FUNC9 (struct fixed31_32,int) ; 
 int FUNC10 (struct fixed31_32) ; 
 int /*<<< orphan*/ * FUNC11 (int,struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC12 (struct dcn20_dwbc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

bool FUNC13(struct dcn20_dwbc *dwbc20,
		uint32_t src_width,
		uint32_t dest_width,
		struct scaling_taps num_taps)
{
	uint32_t h_ratio_luma = 1;
	uint32_t h_ratio_chroma = 1;
	uint32_t h_taps_luma = num_taps.h_taps;
	uint32_t h_taps_chroma = num_taps.h_taps_c;
	int32_t h_init_phase_luma = 0;
	int32_t h_init_phase_chroma = 0;
	uint32_t h_init_phase_luma_int = 0;
	uint32_t h_init_phase_luma_frac = 0;
	uint32_t h_init_phase_chroma_int = 0;
	uint32_t h_init_phase_chroma_frac = 0;
	const uint16_t *filter_h = NULL;
	const uint16_t *filter_h_c = NULL;


	struct fixed31_32 tmp_h_init_phase_luma = FUNC6(0);
	struct fixed31_32 tmp_h_init_phase_chroma = FUNC6(0);


	/*Calculate ratio*/
	struct fixed31_32 tmp_h_ratio_luma = FUNC5(
		src_width, dest_width);

	if (FUNC4(tmp_h_ratio_luma) == 8)
		h_ratio_luma = -1;
	else
		h_ratio_luma = FUNC10(tmp_h_ratio_luma) << 5;
	h_ratio_chroma = h_ratio_luma * 2;

	/*Program ratio*/
	FUNC0(WBSCL_HORZ_FILTER_SCALE_RATIO, WBSCL_H_SCALE_RATIO, h_ratio_luma);

	/* Program taps*/
	FUNC0(WBSCL_TAP_CONTROL, WBSCL_H_NUM_OF_TAPS_Y_RGB, h_taps_luma - 1);
	FUNC0(WBSCL_TAP_CONTROL, WBSCL_H_NUM_OF_TAPS_CBCR, h_taps_chroma - 1);

	/* Calculate phase*/
	tmp_h_init_phase_luma = FUNC2(tmp_h_ratio_luma, h_taps_luma + 1);
	tmp_h_init_phase_luma = FUNC3(tmp_h_init_phase_luma, 2);
	tmp_h_init_phase_luma = FUNC9(tmp_h_init_phase_luma, h_taps_luma);

	h_init_phase_luma = FUNC8(tmp_h_init_phase_luma);
	h_init_phase_luma_int = (h_init_phase_luma >> 19) & 0x1f;
	h_init_phase_luma_frac = (h_init_phase_luma & 0x7ffff) << 5;

	tmp_h_init_phase_chroma = FUNC7(tmp_h_ratio_luma, 2);
	tmp_h_init_phase_chroma = FUNC2(tmp_h_init_phase_chroma, h_taps_chroma + 1);
	tmp_h_init_phase_chroma = FUNC3(tmp_h_init_phase_chroma, 2);
	tmp_h_init_phase_chroma = FUNC9(tmp_h_init_phase_chroma, h_taps_chroma);
	tmp_h_init_phase_chroma = FUNC1(tmp_h_init_phase_chroma, FUNC5(1, 4));

	h_init_phase_chroma = FUNC8(tmp_h_init_phase_chroma);
	h_init_phase_chroma_int = (h_init_phase_chroma >> 19) & 0x1f;
	h_init_phase_chroma_frac = (h_init_phase_chroma & 0x7ffff) << 5;

	/* Program phase*/
	FUNC0(WBSCL_HORZ_FILTER_INIT_Y_RGB, WBSCL_H_INIT_INT_Y_RGB, h_init_phase_luma_int);
	FUNC0(WBSCL_HORZ_FILTER_INIT_Y_RGB, WBSCL_H_INIT_FRAC_Y_RGB, h_init_phase_luma_frac);
	FUNC0(WBSCL_HORZ_FILTER_INIT_CBCR, WBSCL_H_INIT_INT_CBCR, h_init_phase_chroma_int);
	FUNC0(WBSCL_HORZ_FILTER_INIT_CBCR, WBSCL_H_INIT_FRAC_CBCR, h_init_phase_chroma_frac);

	/* Program LUT coefficients*/
	filter_h = FUNC11(
		h_taps_luma, tmp_h_ratio_luma);
	filter_h_c = FUNC11(
		h_taps_chroma, FUNC6(h_ratio_luma * 2));

	FUNC12(dwbc20, h_taps_luma,
		WBSCL_COEF_LUMA_HORZ_FILTER, filter_h);

	FUNC12(dwbc20, h_taps_chroma,
		WBSCL_COEF_CHROMA_HORZ_FILTER, filter_h_c);

	return true;
}