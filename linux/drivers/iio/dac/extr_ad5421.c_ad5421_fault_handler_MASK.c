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
struct iio_dev {int dummy; } ;
struct ad5421_state {unsigned int fault_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int AD5421_FAULT_OVER_CURRENT ; 
 unsigned int AD5421_FAULT_TEMP_OVER_140 ; 
 unsigned int AD5421_FAULT_TRIGGER_IRQ ; 
 unsigned int AD5421_FAULT_UNDER_CURRENT ; 
 int /*<<< orphan*/  AD5421_REG_FAULT ; 
 int /*<<< orphan*/  IIO_CURRENT ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_MAG ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad5421_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct iio_dev *indio_dev = data;
	struct ad5421_state *st = FUNC4(indio_dev);
	unsigned int fault;
	unsigned int old_fault = 0;
	unsigned int events;

	fault = FUNC1(indio_dev, AD5421_REG_FAULT);
	if (!fault)
		return IRQ_NONE;

	/* If we had a fault, this might mean that the DAC has lost its state
	 * and has been reset. Make sure that the control register actually
	 * contains what we expect it to contain. Otherwise the watchdog might
	 * be enabled and we get watchdog timeout faults, which will render the
	 * DAC unusable. */
	FUNC2(indio_dev, 0, 0);


	/* The fault pin stays high as long as a fault condition is present and
	 * it is not possible to mask fault conditions. For certain fault
	 * conditions for example like over-temperature it takes some time
	 * until the fault condition disappears. If we would exit the interrupt
	 * handler immediately after handling the event it would be entered
	 * again instantly. Thus we fall back to polling in case we detect that
	 * a interrupt condition is still present.
	 */
	do {
		/* 0xffff is a invalid value for the register and will only be
		 * read if there has been a communication error */
		if (fault == 0xffff)
			fault = 0;

		/* we are only interested in new events */
		events = (old_fault ^ fault) & fault;
		events &= st->fault_mask;

		if (events & AD5421_FAULT_OVER_CURRENT) {
			FUNC5(indio_dev,
				FUNC0(IIO_CURRENT,
					0,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_RISING),
			FUNC3(indio_dev));
		}

		if (events & AD5421_FAULT_UNDER_CURRENT) {
			FUNC5(indio_dev,
				FUNC0(IIO_CURRENT,
					0,
					IIO_EV_TYPE_THRESH,
					IIO_EV_DIR_FALLING),
				FUNC3(indio_dev));
		}

		if (events & AD5421_FAULT_TEMP_OVER_140) {
			FUNC5(indio_dev,
				FUNC0(IIO_TEMP,
					0,
					IIO_EV_TYPE_MAG,
					IIO_EV_DIR_RISING),
				FUNC3(indio_dev));
		}

		old_fault = fault;
		fault = FUNC1(indio_dev, AD5421_REG_FAULT);

		/* still active? go to sleep for some time */
		if (fault & AD5421_FAULT_TRIGGER_IRQ)
			FUNC6(1000);

	} while (fault & AD5421_FAULT_TRIGGER_IRQ);


	return IRQ_HANDLED;
}