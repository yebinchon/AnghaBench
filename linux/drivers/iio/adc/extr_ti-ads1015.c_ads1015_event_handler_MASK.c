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
typedef  int /*<<< orphan*/  u64 ;
struct iio_dev {int dummy; } ;
struct ads1015_data {scalar_t__ comp_mode; int /*<<< orphan*/  event_channel; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 scalar_t__ ADS1015_CFG_COMP_MODE_TRAD ; 
 int /*<<< orphan*/  ADS1015_CONV_REG ; 
 int IIO_EV_DIR_EITHER ; 
 int IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IIO_VOLTAGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC1 (struct ads1015_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ads1015_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *priv)
{
	struct iio_dev *indio_dev = priv;
	struct ads1015_data *data = FUNC3(indio_dev);
	int val;
	int ret;

	/* Clear the latched ALERT/RDY pin */
	ret = FUNC5(data->regmap, ADS1015_CONV_REG, &val);
	if (ret)
		return IRQ_HANDLED;

	if (FUNC1(data)) {
		enum iio_event_direction dir;
		u64 code;

		dir = data->comp_mode == ADS1015_CFG_COMP_MODE_TRAD ?
					IIO_EV_DIR_RISING : IIO_EV_DIR_EITHER;
		code = FUNC0(IIO_VOLTAGE, data->event_channel,
					IIO_EV_TYPE_THRESH, dir);
		FUNC4(indio_dev, code, FUNC2(indio_dev));
	}

	return IRQ_HANDLED;
}