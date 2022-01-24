#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_vibrator {TYPE_2__* input; int /*<<< orphan*/  play_work; int /*<<< orphan*/  gpio; int /*<<< orphan*/  vcc; } ;
struct TYPE_7__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  close; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 struct gpio_vibrator* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  gpio_vibrator_close ; 
 int /*<<< orphan*/  gpio_vibrator_play_effect ; 
 int /*<<< orphan*/  gpio_vibrator_play_work ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct gpio_vibrator*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct gpio_vibrator*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct gpio_vibrator *vibrator;
	int err;

	vibrator = FUNC5(&pdev->dev, sizeof(*vibrator), GFP_KERNEL);
	if (!vibrator)
		return -ENOMEM;

	vibrator->input = FUNC4(&pdev->dev);
	if (!vibrator->input)
		return -ENOMEM;

	vibrator->vcc = FUNC6(&pdev->dev, "vcc");
	err = FUNC1(vibrator->vcc);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "Failed to request regulator: %d\n",
				err);
		return err;
	}

	vibrator->gpio = FUNC3(&pdev->dev, "enable", GPIOD_OUT_LOW);
	err = FUNC1(vibrator->gpio);
	if (err) {
		if (err != -EPROBE_DEFER)
			FUNC2(&pdev->dev, "Failed to request main gpio: %d\n",
				err);
		return err;
	}

	FUNC0(&vibrator->play_work, gpio_vibrator_play_work);

	vibrator->input->name = "gpio-vibrator";
	vibrator->input->id.bustype = BUS_HOST;
	vibrator->input->close = gpio_vibrator_close;

	FUNC10(vibrator->input, vibrator);
	FUNC9(vibrator->input, EV_FF, FF_RUMBLE);

	err = FUNC7(vibrator->input, NULL,
				      gpio_vibrator_play_effect);
	if (err) {
		FUNC2(&pdev->dev, "Couldn't create FF dev: %d\n", err);
		return err;
	}

	err = FUNC8(vibrator->input);
	if (err) {
		FUNC2(&pdev->dev, "Couldn't register input dev: %d\n", err);
		return err;
	}

	FUNC11(pdev, vibrator);

	return 0;
}