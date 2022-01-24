#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; } ;
struct dc_gamma {int num_entries; TYPE_1__ entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCFE_MEM_PWR_CTRL ; 
 int /*<<< orphan*/  DCP_LUT_MEM_PWR_DIS ; 
 int /*<<< orphan*/  DC_LUT_CONTROL ; 
 int /*<<< orphan*/  DC_LUT_DATA_B_FORMAT ; 
 int /*<<< orphan*/  DC_LUT_DATA_G_FORMAT ; 
 int /*<<< orphan*/  DC_LUT_DATA_R_FORMAT ; 
 int /*<<< orphan*/  DC_LUT_RW_INDEX ; 
 int /*<<< orphan*/  DC_LUT_RW_MODE ; 
 int /*<<< orphan*/  DC_LUT_SEQ_COLOR ; 
 int /*<<< orphan*/  DC_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  GRPH_INPUT_GAMMA_MODE ; 
 int /*<<< orphan*/  GRPH_PRESCALE_BYPASS ; 
 int /*<<< orphan*/  INPUT_GAMMA_CONTROL ; 
 int /*<<< orphan*/  PRESCALE_GRPH_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dce_ipp* FUNC4 (struct input_pixel_processor*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
	struct input_pixel_processor *ipp,
	const struct dc_gamma *gamma)
{
	int i;
	struct dce_ipp *ipp_dce = FUNC4(ipp);

	/* power on LUT memory */
	if (FUNC0(DCFE_MEM_PWR_CTRL))
		FUNC1(DCFE_MEM_PWR_CTRL, 0, DCP_LUT_MEM_PWR_DIS, 1);

	/* enable all */
	FUNC1(DC_LUT_WRITE_EN_MASK, 0, DC_LUT_WRITE_EN_MASK, 0x7);

	/* 256 entry mode */
	FUNC3(DC_LUT_RW_MODE, DC_LUT_RW_MODE, 0);

	/* LUT-256, unsigned, integer, new u0.12 format */
	FUNC2(DC_LUT_CONTROL, 0,
		DC_LUT_DATA_R_FORMAT, 3,
		DC_LUT_DATA_G_FORMAT, 3,
		DC_LUT_DATA_B_FORMAT, 3);

	/* start from index 0 */
	FUNC1(DC_LUT_RW_INDEX, 0,
		DC_LUT_RW_INDEX, 0);

	for (i = 0; i < gamma->num_entries; i++) {
		FUNC1(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.red[i]));
		FUNC1(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.green[i]));
		FUNC1(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.blue[i]));
	}

	/* power off LUT memory */
	if (FUNC0(DCFE_MEM_PWR_CTRL))
		FUNC1(DCFE_MEM_PWR_CTRL, 0, DCP_LUT_MEM_PWR_DIS, 0);

	/* bypass prescale, enable legacy LUT */
	FUNC3(PRESCALE_GRPH_CONTROL, GRPH_PRESCALE_BYPASS, 1);
	FUNC3(INPUT_GAMMA_CONTROL, GRPH_INPUT_GAMMA_MODE, 0);
}