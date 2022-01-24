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
struct st_sensor_data {int /*<<< orphan*/  hw_timestamp; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct st_sensor_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *p)
{
	struct iio_trigger *trig = p;
	struct iio_dev *indio_dev = FUNC2(trig);
	struct st_sensor_data *sdata = FUNC1(indio_dev);

	/* Get the time stamp as close in time as possible */
	sdata->hw_timestamp = FUNC0(indio_dev);
	return IRQ_WAKE_THREAD;
}