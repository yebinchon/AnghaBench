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
typedef  size_t uint32_t ;
struct transform {int dummy; } ;
struct out_csc_color_matrix {int /*<<< orphan*/  color_space; } ;
struct default_adjustment {int force_hw_default; int /*<<< orphan*/  out_color_space; int /*<<< orphan*/  csc_adjust_type; } ;
struct dce_transform {int dummy; } ;
typedef  enum grph_color_adjust_option { ____Placeholder_grph_color_adjust_option } grph_color_adjust_option ;
typedef  enum csc_color_mode { ____Placeholder_csc_color_mode } csc_color_mode ;

/* Variables and functions */
 size_t FUNC0 (struct out_csc_color_matrix*) ; 
 int CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC ; 
 int CSC_COLOR_MODE_GRAPHICS_PREDEFINED ; 
 int GRPH_COLOR_MATRIX_HW_DEFAULT ; 
 int GRPH_COLOR_MATRIX_SW ; 
 struct dce_transform* FUNC1 (struct transform*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_transform*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct out_csc_color_matrix* global_color_matrix ; 
 int /*<<< orphan*/  FUNC3 (struct dce_transform*,struct out_csc_color_matrix const*,int) ; 

void FUNC4(
	struct transform *xfm,
	const struct default_adjustment *default_adjust)
{
	struct dce_transform *xfm_dce = FUNC1(xfm);
	enum csc_color_mode config =
			CSC_COLOR_MODE_GRAPHICS_PREDEFINED;

	if (default_adjust->force_hw_default == false) {
		const struct out_csc_color_matrix *elm;
		/* currently parameter not in use */
		enum grph_color_adjust_option option =
			GRPH_COLOR_MATRIX_HW_DEFAULT;
		uint32_t i;
		/*
		 * HW default false we program locally defined matrix
		 * HW default true  we use predefined hw matrix and we
		 * do not need to program matrix
		 * OEM wants the HW default via runtime parameter.
		 */
		option = GRPH_COLOR_MATRIX_SW;

		for (i = 0; i < FUNC0(global_color_matrix); ++i) {
			elm = &global_color_matrix[i];
			if (elm->color_space != default_adjust->out_color_space)
				continue;
			/* program the matrix with default values from this
			 * file */
			FUNC3(xfm_dce, elm, option);
			config = CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC;
			break;
		}
	}

	/* configure the what we programmed :
	 * 1. Default values from this file
	 * 2. Use hardware default from ROM_A and we do not need to program
	 * matrix */

	FUNC2(xfm_dce, config,
		default_adjust->csc_adjust_type,
		default_adjust->out_color_space);
}