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
struct resource {unsigned long flags; int start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_trigger {int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; } ;
struct iio_interrupt_trigger_info {int irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct iio_trigger*) ; 
 int /*<<< orphan*/  iio_interrupt_trigger_ops ; 
 int /*<<< orphan*/  iio_interrupt_trigger_poll ; 
 struct iio_trigger* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*) ; 
 int FUNC4 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_trigger*,struct iio_interrupt_trigger_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_interrupt_trigger_info*) ; 
 struct iio_interrupt_trigger_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct iio_trigger*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct iio_trigger*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct iio_interrupt_trigger_info *trig_info;
	struct iio_trigger *trig;
	unsigned long irqflags;
	struct resource *irq_res;
	int irq, ret = 0;

	irq_res = FUNC8(pdev, IORESOURCE_IRQ, 0);

	if (irq_res == NULL)
		return -ENODEV;

	irqflags = (irq_res->flags & IRQF_TRIGGER_MASK) | IRQF_SHARED;

	irq = irq_res->start;

	trig = FUNC2("irqtrig%d", irq);
	if (!trig) {
		ret = -ENOMEM;
		goto error_ret;
	}

	trig_info = FUNC7(sizeof(*trig_info), GFP_KERNEL);
	if (!trig_info) {
		ret = -ENOMEM;
		goto error_free_trigger;
	}
	FUNC5(trig, trig_info);
	trig_info->irq = irq;
	trig->ops = &iio_interrupt_trigger_ops;
	ret = FUNC10(irq, iio_interrupt_trigger_poll,
			  irqflags, trig->name, trig);
	if (ret) {
		FUNC0(&pdev->dev,
			"request IRQ-%d failed", irq);
		goto error_free_trig_info;
	}

	ret = FUNC4(trig);
	if (ret)
		goto error_release_irq;
	FUNC9(pdev, trig);

	return 0;

/* First clean up the partly allocated trigger */
error_release_irq:
	FUNC1(irq, trig);
error_free_trig_info:
	FUNC6(trig_info);
error_free_trigger:
	FUNC3(trig);
error_ret:
	return ret;
}