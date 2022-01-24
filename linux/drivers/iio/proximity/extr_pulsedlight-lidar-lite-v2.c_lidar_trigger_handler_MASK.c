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
struct lidar_data {TYPE_1__* client; int /*<<< orphan*/  buffer; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct lidar_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lidar_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *private)
{
	struct iio_poll_func *pf = private;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct lidar_data *data = FUNC2(indio_dev);
	int ret;

	ret = FUNC5(data, data->buffer);
	if (!ret) {
		FUNC3(indio_dev, data->buffer,
						   FUNC1(indio_dev));
	} else if (ret != -EINVAL) {
		FUNC0(&data->client->dev, "cannot read LIDAR measurement");
	}

	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}