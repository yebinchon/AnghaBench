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
struct ltr501_data {TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_INTENSITY ; 
 int /*<<< orphan*/  IIO_PROXIMITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LTR501_ALS_PS_STATUS ; 
 int LTR501_STATUS_ALS_INTR ; 
 int LTR501_STATUS_PS_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct ltr501_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct ltr501_data *data = FUNC3(indio_dev);
	int ret, status;

	ret = FUNC5(data->regmap, LTR501_ALS_PS_STATUS, &status);
	if (ret < 0) {
		FUNC1(&data->client->dev,
			"irq read int reg failed\n");
		return IRQ_HANDLED;
	}

	if (status & LTR501_STATUS_ALS_INTR)
		FUNC4(indio_dev,
			       FUNC0(IIO_INTENSITY, 0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_EITHER),
			       FUNC2(indio_dev));

	if (status & LTR501_STATUS_PS_INTR)
		FUNC4(indio_dev,
			       FUNC0(IIO_PROXIMITY, 0,
						    IIO_EV_TYPE_THRESH,
						    IIO_EV_DIR_EITHER),
			       FUNC2(indio_dev));

	return IRQ_HANDLED;
}