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
struct tpg_data {int recalc_colors; int recalc_lines; scalar_t__ real_xfer_func; scalar_t__ xfer_func; scalar_t__ real_ycbcr_enc; scalar_t__ ycbcr_enc; scalar_t__ real_quantization; scalar_t__ quantization; scalar_t__ color_enc; int recalc_square_border; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  hsv_enc; int /*<<< orphan*/  real_hsv_enc; } ;

/* Variables and functions */
 scalar_t__ TGP_COLOR_ENC_YCBCR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ V4L2_QUANTIZATION_DEFAULT ; 
 scalar_t__ V4L2_XFER_FUNC_DEFAULT ; 
 scalar_t__ V4L2_YCBCR_ENC_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct tpg_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpg_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpg_data*) ; 

__attribute__((used)) static void FUNC6(struct tpg_data *tpg)
{
	if (tpg->recalc_colors) {
		tpg->recalc_colors = false;
		tpg->recalc_lines = true;
		tpg->real_xfer_func = tpg->xfer_func;
		tpg->real_ycbcr_enc = tpg->ycbcr_enc;
		tpg->real_hsv_enc = tpg->hsv_enc;
		tpg->real_quantization = tpg->quantization;

		if (tpg->xfer_func == V4L2_XFER_FUNC_DEFAULT)
			tpg->real_xfer_func =
				FUNC1(tpg->colorspace);

		if (tpg->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT)
			tpg->real_ycbcr_enc =
				FUNC2(tpg->colorspace);

		if (tpg->quantization == V4L2_QUANTIZATION_DEFAULT)
			tpg->real_quantization =
				FUNC0(
					tpg->color_enc != TGP_COLOR_ENC_YCBCR,
					tpg->colorspace, tpg->real_ycbcr_enc);

		FUNC4(tpg);
	}
	if (tpg->recalc_square_border) {
		tpg->recalc_square_border = false;
		FUNC3(tpg);
	}
	if (tpg->recalc_lines) {
		tpg->recalc_lines = false;
		FUNC5(tpg);
	}
}