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
struct st_sensor_data {int /*<<< orphan*/  buffer_data; int /*<<< orphan*/  hw_timestamp; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct st_sensor_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC6(int irq, void *p)
{
	int len;
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct st_sensor_data *sdata = FUNC1(indio_dev);
	s64 timestamp;

	/*
	 * If we do timetamping here, do it before reading the values, because
	 * once we've read the values, new interrupts can occur (when using
	 * the hardware trigger) and the hw_timestamp may get updated.
	 * By storing it in a local variable first, we are safe.
	 */
	if (FUNC4(indio_dev))
		timestamp = sdata->hw_timestamp;
	else
		timestamp = FUNC0(indio_dev);

	len = FUNC5(indio_dev, sdata->buffer_data);
	if (len < 0)
		goto st_sensors_get_buffer_element_error;

	FUNC2(indio_dev, sdata->buffer_data,
					   timestamp);

st_sensors_get_buffer_element_error:
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}