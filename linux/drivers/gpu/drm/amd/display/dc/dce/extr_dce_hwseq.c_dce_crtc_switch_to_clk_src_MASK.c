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
typedef  scalar_t__ uint32_t ;
struct dce_hwseq {int dummy; } ;
struct clock_source {scalar_t__ id; scalar_t__ dp_clk_src; } ;

/* Variables and functions */
 scalar_t__ CLOCK_SOURCE_COMBO_PHY_PLL0 ; 
 scalar_t__ CLOCK_SOURCE_ID_DP_DTO ; 
 scalar_t__ CLOCK_SOURCE_ID_PLL0 ; 
 scalar_t__ CLOCK_SOURCE_ID_PLL2 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  DP_DTO0_ENABLE ; 
 int /*<<< orphan*/ * PHYPLL_PIXEL_RATE_CNTL ; 
 int /*<<< orphan*/  PHYPLL_PIXEL_RATE_SOURCE ; 
 int /*<<< orphan*/ * PIXEL_RATE_CNTL ; 
 int /*<<< orphan*/  PIXEL_RATE_PLL_SOURCE ; 
 int /*<<< orphan*/  PIXEL_RATE_SOURCE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct dce_hwseq *hws,
		struct clock_source *clk_src,
		unsigned int tg_inst)
{
	if (clk_src->id == CLOCK_SOURCE_ID_DP_DTO || clk_src->dp_clk_src) {
		FUNC2(PIXEL_RATE_CNTL[tg_inst],
				DP_DTO0_ENABLE, 1);

	} else if (clk_src->id >= CLOCK_SOURCE_COMBO_PHY_PLL0) {
		uint32_t rate_source = clk_src->id - CLOCK_SOURCE_COMBO_PHY_PLL0;

		FUNC3(PHYPLL_PIXEL_RATE_CNTL[tg_inst],
				PHYPLL_PIXEL_RATE_SOURCE, rate_source,
				PIXEL_RATE_PLL_SOURCE, 0);

		FUNC2(PIXEL_RATE_CNTL[tg_inst],
				DP_DTO0_ENABLE, 0);

	} else if (clk_src->id <= CLOCK_SOURCE_ID_PLL2) {
		uint32_t rate_source = clk_src->id - CLOCK_SOURCE_ID_PLL0;

		FUNC3(PIXEL_RATE_CNTL[tg_inst],
				PIXEL_RATE_SOURCE, rate_source,
				DP_DTO0_ENABLE, 0);

		if (FUNC1(PHYPLL_PIXEL_RATE_CNTL[tg_inst]))
			FUNC2(PHYPLL_PIXEL_RATE_CNTL[tg_inst],
					PIXEL_RATE_PLL_SOURCE, 1);
	} else {
		FUNC0("Unknown clock source. clk_src id: %d, TG_inst: %d",
		       clk_src->id, tg_inst);
	}
}