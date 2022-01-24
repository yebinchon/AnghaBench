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
struct timing_generator {int inst; } ;
struct optc {int opp_count; } ;
struct dc_crtc_timing {int h_addressable; int h_border_left; int h_border_right; scalar_t__ pixel_encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct optc* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  OPTC_DATA_FORMAT ; 
 int /*<<< orphan*/  OPTC_DATA_FORMAT_CONTROL ; 
 int /*<<< orphan*/  OPTC_DATA_SOURCE_SELECT ; 
 int /*<<< orphan*/  OPTC_MEMORY_CONFIG ; 
 int /*<<< orphan*/  OPTC_MEM_SEL ; 
 int /*<<< orphan*/  OPTC_NUM_OF_INPUT_SEGMENT ; 
 int /*<<< orphan*/  OPTC_SEG0_SRC_SEL ; 
 int /*<<< orphan*/  OPTC_SEG1_SRC_SEL ; 
 int /*<<< orphan*/  OPTC_SEGMENT_WIDTH ; 
 int /*<<< orphan*/  OPTC_WIDTH_CONTROL ; 
 int /*<<< orphan*/  OTG_H_TIMING_CNTL ; 
 int /*<<< orphan*/  OTG_H_TIMING_DIV_BY2 ; 
 scalar_t__ PIXEL_ENCODING_YCBCR420 ; 
 scalar_t__ PIXEL_ENCODING_YCBCR422 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct timing_generator *optc, int *opp_id, int opp_cnt,
		struct dc_crtc_timing *timing)
{
	struct optc *optc1 = FUNC1(optc);
	/* 2 pieces of memory required for up to 5120 displays, 4 for up to 8192 */
	int mpcc_hactive = (timing->h_addressable + timing->h_border_left + timing->h_border_right)
			/ opp_cnt;
	int memory_mask = mpcc_hactive <= 2560 ? 0x3 : 0xf;
	uint32_t data_fmt = 0;

	/* TODO: In pseudocode but does not affect maximus, delete comment if we dont need on asic
	 * REG_SET(OTG_GLOBAL_CONTROL2, 0, GLOBAL_UPDATE_LOCK_EN, 1);
	 * Program OTG register MASTER_UPDATE_LOCK_DB_X/Y to the position before DP frame start
	 * REG_SET_2(OTG_GLOBAL_CONTROL1, 0,
	 *		MASTER_UPDATE_LOCK_DB_X, 160,
	 *		MASTER_UPDATE_LOCK_DB_Y, 240);
	 */
	if (FUNC2(OPTC_MEMORY_CONFIG))
		FUNC3(OPTC_MEMORY_CONFIG, 0,
			OPTC_MEM_SEL, memory_mask << (optc->inst * 4));

	if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR422)
		data_fmt = 1;
	else if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
		data_fmt = 2;

	FUNC5(OPTC_DATA_FORMAT_CONTROL, OPTC_DATA_FORMAT, data_fmt);

	FUNC0(opp_cnt == 2);
	FUNC4(OPTC_DATA_SOURCE_SELECT, 0,
			OPTC_NUM_OF_INPUT_SEGMENT, 1,
			OPTC_SEG0_SRC_SEL, opp_id[0],
			OPTC_SEG1_SRC_SEL, opp_id[1]);

	FUNC5(OPTC_WIDTH_CONTROL,
			OPTC_SEGMENT_WIDTH, mpcc_hactive);

	FUNC3(OTG_H_TIMING_CNTL, 0, OTG_H_TIMING_DIV_BY2, 1);
	optc1->opp_count = opp_cnt;
}