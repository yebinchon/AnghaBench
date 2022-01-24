#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpu3050 {int irq_opendrain; int irq_actl; int irq_latch; int irq; TYPE_2__* trig; TYPE_7__* dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_8__ {TYPE_7__* parent; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpu3050* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpu3050_irq_handler ; 
 int /*<<< orphan*/  mpu3050_irq_thread ; 
 int /*<<< orphan*/  mpu3050_trigger_ops ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct iio_dev *indio_dev, int irq)
{
	struct mpu3050 *mpu3050 = FUNC3(indio_dev);
	unsigned long irq_trig;
	int ret;

	mpu3050->trig = FUNC2(&indio_dev->dev,
					       "%s-dev%d",
					       indio_dev->name,
					       indio_dev->id);
	if (!mpu3050->trig)
		return -ENOMEM;

	/* Check if IRQ is open drain */
	if (FUNC9(mpu3050->dev->of_node, "drive-open-drain"))
		mpu3050->irq_opendrain = true;

	irq_trig = FUNC8(FUNC7(irq));
	/*
	 * Configure the interrupt generator hardware to supply whatever
	 * the interrupt is configured for, edges low/high level low/high,
	 * we can provide it all.
	 */
	switch (irq_trig) {
	case IRQF_TRIGGER_RISING:
		FUNC1(&indio_dev->dev,
			 "pulse interrupts on the rising edge\n");
		break;
	case IRQF_TRIGGER_FALLING:
		mpu3050->irq_actl = true;
		FUNC1(&indio_dev->dev,
			 "pulse interrupts on the falling edge\n");
		break;
	case IRQF_TRIGGER_HIGH:
		mpu3050->irq_latch = true;
		FUNC1(&indio_dev->dev,
			 "interrupts active high level\n");
		/*
		 * With level IRQs, we mask the IRQ until it is processed,
		 * but with edge IRQs (pulses) we can queue several interrupts
		 * in the top half.
		 */
		irq_trig |= IRQF_ONESHOT;
		break;
	case IRQF_TRIGGER_LOW:
		mpu3050->irq_latch = true;
		mpu3050->irq_actl = true;
		irq_trig |= IRQF_ONESHOT;
		FUNC1(&indio_dev->dev,
			 "interrupts active low level\n");
		break;
	default:
		/* This is the most preferred mode, if possible */
		FUNC0(&indio_dev->dev,
			"unsupported IRQ trigger specified (%lx), enforce "
			"rising edge\n", irq_trig);
		irq_trig = IRQF_TRIGGER_RISING;
		break;
	}

	/* An open drain line can be shared with several devices */
	if (mpu3050->irq_opendrain)
		irq_trig |= IRQF_SHARED;

	ret = FUNC10(irq,
				   mpu3050_irq_handler,
				   mpu3050_irq_thread,
				   irq_trig,
				   mpu3050->trig->name,
				   mpu3050->trig);
	if (ret) {
		FUNC0(mpu3050->dev,
			"can't get IRQ %d, error %d\n", irq, ret);
		return ret;
	}

	mpu3050->irq = irq;
	mpu3050->trig->dev.parent = mpu3050->dev;
	mpu3050->trig->ops = &mpu3050_trigger_ops;
	FUNC6(mpu3050->trig, indio_dev);

	ret = FUNC5(mpu3050->trig);
	if (ret)
		return ret;

	indio_dev->trig = FUNC4(mpu3050->trig);

	return 0;
}