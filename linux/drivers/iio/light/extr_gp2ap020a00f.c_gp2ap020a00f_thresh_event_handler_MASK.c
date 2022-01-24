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
typedef  unsigned int u8 ;
struct iio_dev {int dummy; } ;
struct gp2ap020a00f_data {scalar_t__ cur_opmode; unsigned int* thresh_val; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_ready_queue; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GP2AP020A00F_D0_L_REG ; 
 unsigned int GP2AP020A00F_FLAG_A ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_ALS_FALLING_EV ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_ALS_IR_TRIGGER ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_ALS_RISING_EV ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_DATA_READY ; 
 unsigned int GP2AP020A00F_FLAG_P ; 
 int /*<<< orphan*/  GP2AP020A00F_FLAG_PROX_TRIGGER ; 
 scalar_t__ GP2AP020A00F_OPMODE_PROX_DETECT ; 
 scalar_t__ GP2AP020A00F_OPMODE_READ_RAW_CLEAR ; 
 scalar_t__ GP2AP020A00F_OPMODE_READ_RAW_IR ; 
 scalar_t__ GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY ; 
 int /*<<< orphan*/  GP2AP020A00F_OP_REG ; 
 unsigned int GP2AP020A00F_PROX_DETECT ; 
 int /*<<< orphan*/  GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GP2AP020A00F_TH_L_REG ; 
 int /*<<< orphan*/  GP2AP020A00F_TL_L_REG ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_LIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_LIGHT_CLEAR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC2 (struct gp2ap020a00f_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct gp2ap020a00f_data*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct gp2ap020a00f_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct iio_dev *indio_dev = data;
	struct gp2ap020a00f_data *priv = FUNC5(indio_dev);
	u8 op_reg_flags, d0_reg_buf[2];
	unsigned int output_val, op_reg_val;
	int thresh_val_id, ret;

	/* Read interrupt flags */
	ret = FUNC10(priv->regmap, GP2AP020A00F_OP_REG,
							&op_reg_val);
	if (ret < 0)
		goto done;

	op_reg_flags = op_reg_val & (GP2AP020A00F_FLAG_A | GP2AP020A00F_FLAG_P
					| GP2AP020A00F_PROX_DETECT);

	op_reg_val &= (~GP2AP020A00F_FLAG_A & ~GP2AP020A00F_FLAG_P
					& ~GP2AP020A00F_PROX_DETECT);

	/* Clear interrupt flags (if not in INTTYPE_PULSE mode) */
	if (priv->cur_opmode != GP2AP020A00F_OPMODE_PROX_DETECT) {
		ret = FUNC11(priv->regmap, GP2AP020A00F_OP_REG,
								op_reg_val);
		if (ret < 0)
			goto done;
	}

	if (op_reg_flags & GP2AP020A00F_FLAG_A) {
		/* Check D0 register to assess if the lux mode
		 * transition is required.
		 */
		ret = FUNC9(priv->regmap, GP2AP020A00F_D0_L_REG,
							d0_reg_buf, 2);
		if (ret < 0)
			goto done;

		output_val = FUNC8((__le16 *)d0_reg_buf);

		if (FUNC2(priv, output_val))
			goto done;

		FUNC3(priv, &output_val);

		/*
		 * We need to check output value to distinguish
		 * between high and low ambient light threshold event.
		 */
		if (FUNC13(GP2AP020A00F_FLAG_ALS_RISING_EV, &priv->flags)) {
			thresh_val_id =
			    FUNC0(GP2AP020A00F_TH_L_REG);
			if (output_val > priv->thresh_val[thresh_val_id])
				FUNC6(indio_dev,
				       FUNC1(
					    IIO_LIGHT,
					    GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR,
					    IIO_MOD_LIGHT_CLEAR,
					    IIO_EV_TYPE_THRESH,
					    IIO_EV_DIR_RISING),
				       FUNC4(indio_dev));
		}

		if (FUNC13(GP2AP020A00F_FLAG_ALS_FALLING_EV, &priv->flags)) {
			thresh_val_id =
			    FUNC0(GP2AP020A00F_TL_L_REG);
			if (output_val < priv->thresh_val[thresh_val_id])
				FUNC6(indio_dev,
				       FUNC1(
					    IIO_LIGHT,
					    GP2AP020A00F_SCAN_MODE_LIGHT_CLEAR,
					    IIO_MOD_LIGHT_CLEAR,
					    IIO_EV_TYPE_THRESH,
					    IIO_EV_DIR_FALLING),
				       FUNC4(indio_dev));
		}
	}

	if (priv->cur_opmode == GP2AP020A00F_OPMODE_READ_RAW_CLEAR ||
	    priv->cur_opmode == GP2AP020A00F_OPMODE_READ_RAW_IR ||
	    priv->cur_opmode == GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY) {
		FUNC12(GP2AP020A00F_FLAG_DATA_READY, &priv->flags);
		FUNC14(&priv->data_ready_queue);
		goto done;
	}

	if (FUNC13(GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, &priv->flags) ||
	    FUNC13(GP2AP020A00F_FLAG_ALS_IR_TRIGGER, &priv->flags) ||
	    FUNC13(GP2AP020A00F_FLAG_PROX_TRIGGER, &priv->flags))
		/* This fires off the trigger. */
		FUNC7(&priv->work);

done:
	return IRQ_HANDLED;
}