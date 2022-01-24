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
struct ccs811_data {int drdy_trig_on; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCS811_MEAS_MODE ; 
 int CCS811_MEAS_MODE_INTERRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ccs811_data* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig,
				    bool state)
{
	struct iio_dev *indio_dev = FUNC3(trig);
	struct ccs811_data *data = FUNC2(indio_dev);
	int ret;

	ret = FUNC0(data->client, CCS811_MEAS_MODE);
	if (ret < 0)
		return ret;

	if (state)
		ret |= CCS811_MEAS_MODE_INTERRUPT;
	else
		ret &= ~CCS811_MEAS_MODE_INTERRUPT;

	data->drdy_trig_on = state;

	return FUNC1(data->client, CCS811_MEAS_MODE, ret);
}