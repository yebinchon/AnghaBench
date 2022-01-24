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
struct transform {int dummy; } ;
struct out_csc_color_matrix {int /*<<< orphan*/  color_space; } ;
struct dce_transform {int dummy; } ;
typedef  enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;

/* Variables and functions */
 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ; 
 int /*<<< orphan*/  GRAPHICS_CSC_ADJUST_TYPE_SW ; 
 int /*<<< orphan*/  GRPH_COLOR_MATRIX_SW ; 
 struct dce_transform* FUNC0 (struct transform*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_transform*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_transform*,struct out_csc_color_matrix const*,int /*<<< orphan*/ ) ; 

void FUNC3(
	struct transform *xfm,
	const struct out_csc_color_matrix *tbl_entry)
{
	struct dce_transform *xfm_dce = FUNC0(xfm);
	enum csc_color_mode config =
			CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC;

	FUNC2(
			xfm_dce, tbl_entry, GRPH_COLOR_MATRIX_SW);

	/*  We did everything ,now program DxOUTPUT_CSC_CONTROL */
	FUNC1(xfm_dce, config, GRAPHICS_CSC_ADJUST_TYPE_SW,
			tbl_entry->color_space);

	/*TODO: Check if denormalization is needed*/
	/*set_Denormalization(opp, adjust->color_depth);*/
}