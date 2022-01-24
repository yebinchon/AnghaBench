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
struct adxl34x_platform_data {int tap_axis_control; int orientation_enable; scalar_t__ fifo_mode; int /*<<< orphan*/ * ev_codes_orient_3d; int /*<<< orphan*/ * ev_codes_orient_2d; scalar_t__ ev_code_act_inactivity; int /*<<< orphan*/  ev_code_ff; } ;
struct adxl34x {int orient2d_saved; int orient3d_saved; int /*<<< orphan*/  input; scalar_t__ fifo_delay; int /*<<< orphan*/  dev; struct adxl34x_platform_data pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ACTIVITY ; 
 int /*<<< orphan*/  ACT_TAP_STATUS ; 
 int FUNC0 (struct adxl34x*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int ADXL346_2D_VALID ; 
 int FUNC2 (int) ; 
 int ADXL346_3D_VALID ; 
 int ADXL_EN_ORIENTATION_2D ; 
 int ADXL_EN_ORIENTATION_3D ; 
 int DATA_READY ; 
 int DOUBLE_TAP ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FIFO_STATUS ; 
 int FREE_FALL ; 
 int INACTIVITY ; 
 int /*<<< orphan*/  INT_SOURCE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ORIENT ; 
 int OVERRUN ; 
 int SINGLE_TAP ; 
 int TAP_X_EN ; 
 int TAP_Y_EN ; 
 int TAP_Z_EN ; 
 int WATERMARK ; 
 int /*<<< orphan*/  FUNC4 (struct adxl34x*,struct adxl34x_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adxl34x*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *handle)
{
	struct adxl34x *ac = handle;
	struct adxl34x_platform_data *pdata = &ac->pdata;
	int int_stat, tap_stat, samples, orient, orient_code;

	/*
	 * ACT_TAP_STATUS should be read before clearing the interrupt
	 * Avoid reading ACT_TAP_STATUS in case TAP detection is disabled
	 */

	if (pdata->tap_axis_control & (TAP_X_EN | TAP_Y_EN | TAP_Z_EN))
		tap_stat = FUNC0(ac, ACT_TAP_STATUS);
	else
		tap_stat = 0;

	int_stat = FUNC0(ac, INT_SOURCE);

	if (int_stat & FREE_FALL)
		FUNC5(ac->input, pdata->ev_code_ff);

	if (int_stat & OVERRUN)
		FUNC7(ac->dev, "OVERRUN\n");

	if (int_stat & (SINGLE_TAP | DOUBLE_TAP)) {
		FUNC4(ac, pdata, tap_stat);

		if (int_stat & DOUBLE_TAP)
			FUNC4(ac, pdata, tap_stat);
	}

	if (pdata->ev_code_act_inactivity) {
		if (int_stat & ACTIVITY)
			FUNC8(ac->input,
					 pdata->ev_code_act_inactivity, 1);
		if (int_stat & INACTIVITY)
			FUNC8(ac->input,
					 pdata->ev_code_act_inactivity, 0);
	}

	/*
	 * ORIENTATION SENSING ADXL346 only
	 */
	if (pdata->orientation_enable) {
		orient = FUNC0(ac, ORIENT);
		if ((pdata->orientation_enable & ADXL_EN_ORIENTATION_2D) &&
		    (orient & ADXL346_2D_VALID)) {

			orient_code = FUNC1(orient);
			/* Report orientation only when it changes */
			if (ac->orient2d_saved != orient_code) {
				ac->orient2d_saved = orient_code;
				FUNC5(ac->input,
					pdata->ev_codes_orient_2d[orient_code]);
			}
		}

		if ((pdata->orientation_enable & ADXL_EN_ORIENTATION_3D) &&
		    (orient & ADXL346_3D_VALID)) {

			orient_code = FUNC2(orient) - 1;
			/* Report orientation only when it changes */
			if (ac->orient3d_saved != orient_code) {
				ac->orient3d_saved = orient_code;
				FUNC5(ac->input,
					pdata->ev_codes_orient_3d[orient_code]);
			}
		}
	}

	if (int_stat & (DATA_READY | WATERMARK)) {

		if (pdata->fifo_mode)
			samples = FUNC3(FUNC0(ac, FIFO_STATUS)) + 1;
		else
			samples = 1;

		for (; samples > 0; samples--) {
			FUNC6(ac);
			/*
			 * To ensure that the FIFO has
			 * completely popped, there must be at least 5 us between
			 * the end of reading the data registers, signified by the
			 * transition to register 0x38 from 0x37 or the CS pin
			 * going high, and the start of new reads of the FIFO or
			 * reading the FIFO_STATUS register. For SPI operation at
			 * 1.5 MHz or lower, the register addressing portion of the
			 * transmission is sufficient delay to ensure the FIFO has
			 * completely popped. It is necessary for SPI operation
			 * greater than 1.5 MHz to de-assert the CS pin to ensure a
			 * total of 5 us, which is at most 3.4 us at 5 MHz
			 * operation.
			 */
			if (ac->fifo_delay && (samples > 1))
				FUNC10(3);
		}
	}

	FUNC9(ac->input);

	return IRQ_HANDLED;
}