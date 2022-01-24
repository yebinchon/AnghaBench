#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sun4i_gpadc_iio {int dummy; } ;
struct sun4i_gpadc_dev {int /*<<< orphan*/  regmap_irqc; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,...) ; 
 struct sun4i_gpadc_dev* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct sun4i_gpadc_iio*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct sun4i_gpadc_iio* FUNC5 (struct sun4i_gpadc_dev*) ; 
 int FUNC6 (struct platform_device*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev, const char *name,
			  irq_handler_t handler, const char *devname,
			  unsigned int *irq, atomic_t *atomic)
{
	int ret;
	struct sun4i_gpadc_dev *mfd_dev = FUNC2(pdev->dev.parent);
	struct sun4i_gpadc_iio *info = FUNC5(FUNC2(&pdev->dev));

	/*
	 * Once the interrupt is activated, the IP continuously performs
	 * conversions thus throws interrupts. The interrupt is activated right
	 * after being requested but we want to control when these interrupts
	 * occur thus we disable it right after being requested. However, an
	 * interrupt might occur between these two instructions and we have to
	 * make sure that does not happen, by using atomic flags. We set the
	 * flag before requesting the interrupt and unset it right after
	 * disabling the interrupt. When an interrupt occurs between these two
	 * instructions, reading the atomic flag will tell us to ignore the
	 * interrupt.
	 */
	FUNC0(atomic, 1);

	ret = FUNC6(pdev, name);
	if (ret < 0)
		return ret;

	ret = FUNC7(mfd_dev->regmap_irqc, ret);
	if (ret < 0) {
		FUNC1(&pdev->dev, "failed to get virq for irq %s\n", name);
		return ret;
	}

	*irq = ret;
	ret = FUNC3(&pdev->dev, *irq, handler, 0,
					   devname, info);
	if (ret < 0) {
		FUNC1(&pdev->dev, "could not request %s interrupt: %d\n",
			name, ret);
		return ret;
	}

	FUNC4(*irq);
	FUNC0(atomic, 0);

	return 0;
}