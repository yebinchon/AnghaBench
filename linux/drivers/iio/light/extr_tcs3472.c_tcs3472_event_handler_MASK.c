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
struct tcs3472_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_EITHER ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_INTENSITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TCS3472_INTR_CLEAR ; 
 int /*<<< orphan*/  TCS3472_STATUS ; 
 int TCS3472_STATUS_AINT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct tcs3472_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *priv)
{
	struct iio_dev *indio_dev = priv;
	struct tcs3472_data *data = FUNC3(indio_dev);
	int ret;

	ret = FUNC1(data->client, TCS3472_STATUS);
	if (ret >= 0 && (ret & TCS3472_STATUS_AINT)) {
		FUNC4(indio_dev, FUNC0(IIO_INTENSITY, 0,
						IIO_EV_TYPE_THRESH,
						IIO_EV_DIR_EITHER),
				FUNC2(indio_dev));

		FUNC1(data->client, TCS3472_INTR_CLEAR);
	}

	return IRQ_HANDLED;
}