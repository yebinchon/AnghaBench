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
struct sun4i_gpadc_iio {int /*<<< orphan*/  temp_data_irq; int /*<<< orphan*/  regmap; scalar_t__ no_irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct iio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_GPADC_TEMP_DATA ; 
 struct sun4i_gpadc_iio* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev, int *val)
{
	struct sun4i_gpadc_iio *info = FUNC0(indio_dev);

	if (info->no_irq) {
		FUNC1(indio_dev->dev.parent);

		FUNC4(info->regmap, SUN4I_GPADC_TEMP_DATA, val);

		FUNC2(indio_dev->dev.parent);
		FUNC3(indio_dev->dev.parent);

		return 0;
	}

	return FUNC5(indio_dev, 0, val, info->temp_data_irq);
}