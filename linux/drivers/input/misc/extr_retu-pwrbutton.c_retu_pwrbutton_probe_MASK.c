#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct retu_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct input_dev {char* name; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 struct retu_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct retu_dev*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  retu_pwrbutton_irq ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct retu_dev *rdev = FUNC0(pdev->dev.parent);
	struct input_dev *idev;
	int irq;
	int error;

	irq = FUNC6(pdev, 0);
	if (irq < 0)
		return irq;

	idev = FUNC1(&pdev->dev);
	if (!idev)
		return -ENOMEM;

	idev->name = "retu-pwrbutton";
	idev->dev.parent = &pdev->dev;

	FUNC4(idev, EV_KEY, KEY_POWER);
	FUNC5(idev, rdev);

	error = FUNC2(&pdev->dev, irq,
					  NULL, retu_pwrbutton_irq,
					  IRQF_ONESHOT,
					  "retu-pwrbutton", idev);
	if (error)
		return error;

	error = FUNC3(idev);
	if (error)
		return error;

	return 0;
}