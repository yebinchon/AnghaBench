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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  inst; } ;
struct optc {int opp_count; } ;
struct dc_crtc_timing {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OPTC_DATA_SOURCE_SELECT ; 
 int /*<<< orphan*/  OPTC_MEMORY_CONFIG ; 
 int /*<<< orphan*/  OPTC_MEM_SEL ; 
 int /*<<< orphan*/  OPTC_NUM_OF_INPUT_SEGMENT ; 
 int /*<<< orphan*/  OPTC_SEG0_SRC_SEL ; 
 int /*<<< orphan*/  OPTC_SEG1_SRC_SEL ; 
 int /*<<< orphan*/  OTG_H_TIMING_CNTL ; 
 int /*<<< orphan*/  OTG_H_TIMING_DIV_BY2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_crtc_timing const*) ; 

void FUNC6(struct timing_generator *optc,
		const struct dc_crtc_timing *dc_crtc_timing)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t h_div_2 = 0;

	FUNC2(OPTC_DATA_SOURCE_SELECT, 0,
			OPTC_NUM_OF_INPUT_SEGMENT, 0,
			OPTC_SEG0_SRC_SEL, optc->inst,
			OPTC_SEG1_SRC_SEL, 0xf);
	FUNC4(OTG_H_TIMING_CNTL, 0);

	h_div_2 = FUNC5(dc_crtc_timing);
	FUNC3(OTG_H_TIMING_CNTL,
			OTG_H_TIMING_DIV_BY2, h_div_2);
	FUNC1(OPTC_MEMORY_CONFIG, 0,
			OPTC_MEM_SEL, 0);
	optc1->opp_count = 1;
}