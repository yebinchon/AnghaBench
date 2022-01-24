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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct fxas21002c_data {int /*<<< orphan*/ * regmap_fields; } ;

/* Variables and functions */
 size_t F_INT_EN_DRDY ; 
 struct fxas21002c_data* FUNC0 (struct iio_dev*) ; 
 struct iio_dev* FUNC1 (struct iio_trigger*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_trigger *trig,
						 bool state)
{
	struct iio_dev *indio_dev = FUNC1(trig);
	struct fxas21002c_data *data = FUNC0(indio_dev);

	return FUNC2(data->regmap_fields[F_INT_EN_DRDY], state);
}