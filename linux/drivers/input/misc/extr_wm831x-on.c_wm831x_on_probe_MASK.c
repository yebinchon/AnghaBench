#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wm831x_on {TYPE_2__* dev; int /*<<< orphan*/  work; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_9__ {char* name; char* phys; TYPE_1__ dev; void** keybit; void** evbit; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 struct wm831x* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_3__*) ; 
 struct wm831x_on* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct wm831x_on*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct wm831x_on*) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct wm831x_on*) ; 
 int FUNC13 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_on_irq ; 
 int /*<<< orphan*/  wm831x_poll_on ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC5(pdev->dev.parent);
	struct wm831x_on *wm831x_on;
	int irq = FUNC13(wm831x, FUNC10(pdev, 0));
	int ret;

	wm831x_on = FUNC7(&pdev->dev, sizeof(struct wm831x_on),
				 GFP_KERNEL);
	if (!wm831x_on) {
		FUNC4(&pdev->dev, "Can't allocate data\n");
		return -ENOMEM;
	}

	wm831x_on->wm831x = wm831x;
	FUNC2(&wm831x_on->work, wm831x_poll_on);

	wm831x_on->dev = FUNC6(&pdev->dev);
	if (!wm831x_on->dev) {
		FUNC4(&pdev->dev, "Can't allocate input dev\n");
		ret = -ENOMEM;
		goto err;
	}

	wm831x_on->dev->evbit[0] = FUNC0(EV_KEY);
	wm831x_on->dev->keybit[FUNC1(KEY_POWER)] = FUNC0(KEY_POWER);
	wm831x_on->dev->name = "wm831x_on";
	wm831x_on->dev->phys = "wm831x_on/input0";
	wm831x_on->dev->dev.parent = &pdev->dev;

	ret = FUNC12(irq, NULL, wm831x_on_irq,
				   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				   "wm831x_on",
				   wm831x_on);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Unable to request IRQ: %d\n", ret);
		goto err_input_dev;
	}
	ret = FUNC9(wm831x_on->dev);
	if (ret) {
		FUNC3(&pdev->dev, "Can't register input device: %d\n", ret);
		goto err_irq;
	}

	FUNC11(pdev, wm831x_on);

	return 0;

err_irq:
	FUNC8(irq, wm831x_on);
err_input_dev:
err:
	return ret;
}