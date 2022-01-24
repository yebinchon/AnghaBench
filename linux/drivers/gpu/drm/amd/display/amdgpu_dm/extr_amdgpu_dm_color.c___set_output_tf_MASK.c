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
struct drm_color_lut {int dummy; } ;
struct dc_transfer_func {scalar_t__ tf; } ;
struct dc_gamma {int /*<<< orphan*/  type; scalar_t__ num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GAMMA_CS_TFM_1D ; 
 int /*<<< orphan*/  GAMMA_CUSTOM ; 
 scalar_t__ MAX_COLOR_LUT_ENTRIES ; 
 scalar_t__ TRANSFER_FUNCTION_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (struct drm_color_lut const*,struct dc_gamma*,int) ; 
 struct dc_gamma* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dc_gamma**) ; 
 int FUNC4 (struct dc_transfer_func*,struct dc_gamma*,int) ; 
 int FUNC5 (struct dc_transfer_func*,struct dc_gamma*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dc_transfer_func *func,
			   const struct drm_color_lut *lut, uint32_t lut_size,
			   bool has_rom)
{
	struct dc_gamma *gamma = NULL;
	bool res;

	FUNC0(lut && lut_size == MAX_COLOR_LUT_ENTRIES);

	gamma = FUNC2();
	if (!gamma)
		return -ENOMEM;

	gamma->num_entries = lut_size;
	FUNC1(lut, gamma, false);

	if (func->tf == TRANSFER_FUNCTION_LINEAR) {
		/*
		 * Color module doesn't like calculating regamma params
		 * on top of a linear input. But degamma params can be used
		 * instead to simulate this.
		 */
		gamma->type = GAMMA_CUSTOM;
		res = FUNC4(func, gamma, true);
	} else {
		/*
		 * Assume sRGB. The actual mapping will depend on whether the
		 * input was legacy or not.
		 */
		gamma->type = GAMMA_CS_TFM_1D;
		res = FUNC5(func, gamma, false,
							 has_rom, NULL);
	}

	FUNC3(&gamma);

	return res ? 0 : -ENOMEM;
}