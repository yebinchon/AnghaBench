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
struct iio_dev {int dummy; } ;
struct apds9960_data {int /*<<< orphan*/  regmap; scalar_t__ pxs_int; scalar_t__ als_int; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9960_REG_CICLEAR ; 
 int /*<<< orphan*/  APDS9960_REG_PICLEAR ; 
 int /*<<< orphan*/  APDS9960_REG_STATUS ; 
 int APDS9960_REG_STATUS_ALS_INT ; 
 int APDS9960_REG_STATUS_GINT ; 
 int APDS9960_REG_STATUS_PS_INT ; 
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_INTENSITY ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct apds9960_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct apds9960_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct apds9960_data *data = FUNC4(indio_dev);
	int ret, status;

	ret = FUNC6(data->regmap, APDS9960_REG_STATUS, &status);
	if (ret < 0) {
		FUNC2(&data->client->dev, "irq status reg read failed\n");
		return IRQ_HANDLED;
	}

	if ((status & APDS9960_REG_STATUS_ALS_INT) && data->als_int) {
		FUNC5(indio_dev,
			       FUNC0(IIO_INTENSITY, 0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_EITHER),
			       FUNC3(indio_dev));
		FUNC7(data->regmap, APDS9960_REG_CICLEAR, 1);
	}

	if ((status & APDS9960_REG_STATUS_PS_INT) && data->pxs_int) {
		FUNC5(indio_dev,
			       FUNC0(IIO_PROXIMITY, 0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_EITHER),
			       FUNC3(indio_dev));
		FUNC7(data->regmap, APDS9960_REG_PICLEAR, 1);
	}

	if (status & APDS9960_REG_STATUS_GINT)
		FUNC1(data);

	return IRQ_HANDLED;
}