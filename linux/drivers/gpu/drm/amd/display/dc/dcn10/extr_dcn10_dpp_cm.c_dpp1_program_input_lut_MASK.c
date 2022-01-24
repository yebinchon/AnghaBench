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
typedef  int /*<<< orphan*/  uint32_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; } ;
struct dc_gamma {int num_entries; TYPE_1__ entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_IGAM_CONTROL ; 
 int /*<<< orphan*/  CM_IGAM_INPUT_FORMAT ; 
 int /*<<< orphan*/  CM_IGAM_LUT_FORMAT_B ; 
 int /*<<< orphan*/  CM_IGAM_LUT_FORMAT_G ; 
 int /*<<< orphan*/  CM_IGAM_LUT_FORMAT_R ; 
 int /*<<< orphan*/  CM_IGAM_LUT_MODE ; 
 int /*<<< orphan*/  CM_IGAM_LUT_RW_CONTROL ; 
 int /*<<< orphan*/  CM_IGAM_LUT_RW_INDEX ; 
 int /*<<< orphan*/  CM_IGAM_LUT_RW_MODE ; 
 int /*<<< orphan*/  CM_IGAM_LUT_SEL ; 
 int /*<<< orphan*/  CM_IGAM_LUT_SEQ_COLOR ; 
 int /*<<< orphan*/  CM_IGAM_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  CM_MEM_PWR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SHARED_MEM_PWR_DIS ; 
 struct dcn10_dpp* FUNC4 (struct dpp*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC7 (struct dpp*,int*) ; 

void FUNC8(
		struct dpp *dpp_base,
		const struct dc_gamma *gamma)
{
	int i;
	struct dcn10_dpp *dpp = FUNC4(dpp_base);
	bool rama_occupied = false;
	uint32_t ram_num;
	// Power on LUT memory.
	FUNC1(CM_MEM_PWR_CTRL, 0, SHARED_MEM_PWR_DIS, 1);
	FUNC6(dpp_base);
	// Determine whether to use RAM A or RAM B
	FUNC7(dpp_base, &rama_occupied);
	if (!rama_occupied)
		FUNC2(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_SEL, 0);
	else
		FUNC2(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_SEL, 1);
	// RW mode is 256-entry LUT
	FUNC2(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_RW_MODE, 0);
	// IGAM Input format should be 8 bits per channel.
	FUNC2(CM_IGAM_CONTROL, CM_IGAM_INPUT_FORMAT, 0);
	// Do not mask any R,G,B values
	FUNC2(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_WRITE_EN_MASK, 7);
	// LUT-256, unsigned, integer, new u0.12 format
	FUNC3(
		CM_IGAM_CONTROL,
		CM_IGAM_LUT_FORMAT_R, 3,
		CM_IGAM_LUT_FORMAT_G, 3,
		CM_IGAM_LUT_FORMAT_B, 3);
	// Start at index 0 of IGAM LUT
	FUNC2(CM_IGAM_LUT_RW_INDEX, CM_IGAM_LUT_RW_INDEX, 0);
	for (i = 0; i < gamma->num_entries; i++) {
		FUNC1(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.red[i]));
		FUNC1(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.green[i]));
		FUNC1(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
				FUNC5(
					gamma->entries.blue[i]));
	}
	// Power off LUT memory
	FUNC1(CM_MEM_PWR_CTRL, 0, SHARED_MEM_PWR_DIS, 0);
	// Enable IGAM LUT on ram we just wrote to. 2 => RAMA, 3 => RAMB
	FUNC2(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, rama_occupied ? 3 : 2);
	FUNC0(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, &ram_num);
}