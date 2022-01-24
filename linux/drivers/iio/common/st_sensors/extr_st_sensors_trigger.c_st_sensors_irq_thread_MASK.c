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
struct st_sensor_data {int /*<<< orphan*/  hw_timestamp; int /*<<< orphan*/  dev; scalar_t__ hw_irq_trigger; int /*<<< orphan*/  edge_irq; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (struct iio_dev*,struct st_sensor_data*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_trigger *trig = p;
	struct iio_dev *indio_dev = FUNC3(trig);
	struct st_sensor_data *sdata = FUNC2(indio_dev);

	/*
	 * If this trigger is backed by a hardware interrupt and we have a
	 * status register, check if this IRQ came from us. Notice that
	 * we will process also if st_sensors_new_samples_available()
	 * returns negative: if we can't check status, then poll
	 * unconditionally.
	 */
	if (sdata->hw_irq_trigger &&
	    FUNC5(indio_dev, sdata)) {
		FUNC4(p);
	} else {
		FUNC0(sdata->dev, "spurious IRQ\n");
		return IRQ_NONE;
	}

	/*
	 * If we have proper level IRQs the handler will be re-entered if
	 * the line is still active, so return here and come back in through
	 * the top half if need be.
	 */
	if (!sdata->edge_irq)
		return IRQ_HANDLED;

	/*
	 * If we are using edge IRQs, new samples arrived while processing
	 * the IRQ and those may be missed unless we pick them here, so poll
	 * again. If the sensor delivery frequency is very high, this thread
	 * turns into a polled loop handler.
	 */
	while (sdata->hw_irq_trigger &&
	       FUNC5(indio_dev, sdata)) {
		FUNC0(sdata->dev, "more samples came in during polling\n");
		sdata->hw_timestamp = FUNC1(indio_dev);
		FUNC4(p);
	}

	return IRQ_HANDLED;
}