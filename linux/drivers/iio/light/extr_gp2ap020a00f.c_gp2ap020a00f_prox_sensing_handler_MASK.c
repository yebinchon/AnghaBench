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
struct iio_dev {int dummy; } ;
struct gp2ap020a00f_data {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GP2AP020A00F_OP_REG ; 
 unsigned int GP2AP020A00F_PROX_DETECT ; 
 int /*<<< orphan*/  GP2AP020A00F_SCAN_MODE_PROXIMITY ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_ROC ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC1 (struct gp2ap020a00f_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct gp2ap020a00f_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct iio_dev *indio_dev = data;
	struct gp2ap020a00f_data *priv = FUNC3(indio_dev);
	unsigned int op_reg_val;
	int ret;

	/* Read interrupt flags */
	ret = FUNC5(priv->regmap, GP2AP020A00F_OP_REG, &op_reg_val);
	if (ret < 0)
		return IRQ_HANDLED;

	if (FUNC1(priv)) {
		if (op_reg_val & GP2AP020A00F_PROX_DETECT) {
			FUNC4(indio_dev,
			       FUNC0(
				    IIO_PROXIMITY,
				    GP2AP020A00F_SCAN_MODE_PROXIMITY,
				    IIO_EV_TYPE_ROC,
				    IIO_EV_DIR_RISING),
			       FUNC2(indio_dev));
		} else {
			FUNC4(indio_dev,
			       FUNC0(
				    IIO_PROXIMITY,
				    GP2AP020A00F_SCAN_MODE_PROXIMITY,
				    IIO_EV_TYPE_ROC,
				    IIO_EV_DIR_FALLING),
			       FUNC2(indio_dev));
		}
	}

	return IRQ_HANDLED;
}