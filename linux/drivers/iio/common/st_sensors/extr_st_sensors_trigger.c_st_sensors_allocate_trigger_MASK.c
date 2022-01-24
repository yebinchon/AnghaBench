#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_data {int edge_irq; TYPE_5__* trig; int /*<<< orphan*/  irq; TYPE_4__* sensor_settings; scalar_t__ int_pin_open_drain; int /*<<< orphan*/  dev; } ;
struct iio_trigger_ops {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; TYPE_1__ dev; struct iio_trigger_ops const* ops; } ;
struct TYPE_13__ {scalar_t__ addr; } ;
struct TYPE_14__ {TYPE_2__ stat_drdy; int /*<<< orphan*/  mask_ihl; int /*<<< orphan*/  addr_ihl; } ;
struct TYPE_15__ {TYPE_3__ drdy_irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 struct st_sensor_data* FUNC3 (struct iio_dev*) ; 
 TYPE_5__* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  st_sensors_irq_handler ; 
 int /*<<< orphan*/  st_sensors_irq_thread ; 
 int FUNC12 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct iio_dev *indio_dev,
				const struct iio_trigger_ops *trigger_ops)
{
	struct st_sensor_data *sdata = FUNC3(indio_dev);
	unsigned long irq_trig;
	int err;

	sdata->trig = FUNC4("%s-trigger", indio_dev->name);
	if (sdata->trig == NULL) {
		FUNC0(&indio_dev->dev, "failed to allocate iio trigger.\n");
		return -ENOMEM;
	}

	FUNC8(sdata->trig, indio_dev);
	sdata->trig->ops = trigger_ops;
	sdata->trig->dev.parent = sdata->dev;

	irq_trig = FUNC10(FUNC9(sdata->irq));
	/*
	 * If the IRQ is triggered on falling edge, we need to mark the
	 * interrupt as active low, if the hardware supports this.
	 */
	switch(irq_trig) {
	case IRQF_TRIGGER_FALLING:
	case IRQF_TRIGGER_LOW:
		if (!sdata->sensor_settings->drdy_irq.addr_ihl) {
			FUNC0(&indio_dev->dev,
				"falling/low specified for IRQ "
				"but hardware supports only rising/high: "
				"will request rising/high\n");
			if (irq_trig == IRQF_TRIGGER_FALLING)
				irq_trig = IRQF_TRIGGER_RISING;
			if (irq_trig == IRQF_TRIGGER_LOW)
				irq_trig = IRQF_TRIGGER_HIGH;
		} else {
			/* Set up INT active low i.e. falling edge */
			err = FUNC12(indio_dev,
				sdata->sensor_settings->drdy_irq.addr_ihl,
				sdata->sensor_settings->drdy_irq.mask_ihl, 1);
			if (err < 0)
				goto iio_trigger_free;
			FUNC1(&indio_dev->dev,
				 "interrupts on the falling edge or "
				 "active low level\n");
		}
		break;
	case IRQF_TRIGGER_RISING:
		FUNC1(&indio_dev->dev,
			 "interrupts on the rising edge\n");
		break;
	case IRQF_TRIGGER_HIGH:
		FUNC1(&indio_dev->dev,
			 "interrupts active high level\n");
		break;
	default:
		/* This is the most preferred mode, if possible */
		FUNC0(&indio_dev->dev,
			"unsupported IRQ trigger specified (%lx), enforce "
			"rising edge\n", irq_trig);
		irq_trig = IRQF_TRIGGER_RISING;
	}

	/* Tell the interrupt handler that we're dealing with edges */
	if (irq_trig == IRQF_TRIGGER_FALLING ||
	    irq_trig == IRQF_TRIGGER_RISING)
		sdata->edge_irq = true;
	else
		/*
		 * If we're not using edges (i.e. level interrupts) we
		 * just mask off the IRQ, handle one interrupt, then
		 * if the line is still low, we return to the
		 * interrupt handler top half again and start over.
		 */
		irq_trig |= IRQF_ONESHOT;

	/*
	 * If the interrupt pin is Open Drain, by definition this
	 * means that the interrupt line may be shared with other
	 * peripherals. But to do this we also need to have a status
	 * register and mask to figure out if this sensor was firing
	 * the IRQ or not, so we can tell the interrupt handle that
	 * it was "our" interrupt.
	 */
	if (sdata->int_pin_open_drain &&
	    sdata->sensor_settings->drdy_irq.stat_drdy.addr)
		irq_trig |= IRQF_SHARED;

	err = FUNC11(sdata->irq,
				   st_sensors_irq_handler,
				   st_sensors_irq_thread,
				   irq_trig,
				   sdata->trig->name,
				   sdata->trig);
	if (err) {
		FUNC0(&indio_dev->dev, "failed to request trigger IRQ.\n");
		goto iio_trigger_free;
	}

	err = FUNC7(sdata->trig);
	if (err < 0) {
		FUNC0(&indio_dev->dev, "failed to register iio trigger.\n");
		goto iio_trigger_register_error;
	}
	indio_dev->trig = FUNC6(sdata->trig);

	return 0;

iio_trigger_register_error:
	FUNC2(sdata->irq, sdata->trig);
iio_trigger_free:
	FUNC5(sdata->trig);
	return err;
}