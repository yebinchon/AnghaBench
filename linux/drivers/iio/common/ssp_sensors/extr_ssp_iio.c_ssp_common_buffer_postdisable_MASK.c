#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssp_sensor_data {int /*<<< orphan*/  buffer; int /*<<< orphan*/  type; } ;
struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct ssp_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ssp_sensor_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ssp_data*,int /*<<< orphan*/ ) ; 

int FUNC4(struct iio_dev *indio_dev)
{
	int ret;
	struct ssp_sensor_data *spd = FUNC1(indio_dev);
	struct ssp_data *data = FUNC0(indio_dev->dev.parent->parent);

	ret = FUNC3(data, spd->type);
	if (ret < 0)
		return ret;

	FUNC2(spd->buffer);

	return ret;
}