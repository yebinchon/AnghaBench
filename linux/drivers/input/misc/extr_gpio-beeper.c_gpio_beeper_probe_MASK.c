#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  event; int /*<<< orphan*/  close; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct gpio_beeper {int /*<<< orphan*/  work; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (int /*<<< orphan*/ *) ; 
 struct gpio_beeper* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_beeper_close ; 
 int /*<<< orphan*/  gpio_beeper_event ; 
 int /*<<< orphan*/  gpio_beeper_work ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct gpio_beeper*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct gpio_beeper *beep;
	struct input_dev *input;

	beep = FUNC5(&pdev->dev, sizeof(*beep), GFP_KERNEL);
	if (!beep)
		return -ENOMEM;

	beep->desc = FUNC3(&pdev->dev, NULL, GPIOD_OUT_LOW);
	if (FUNC1(beep->desc))
		return FUNC2(beep->desc);

	input = FUNC4(&pdev->dev);
	if (!input)
		return -ENOMEM;

	FUNC0(&beep->work, gpio_beeper_work);

	input->name		= pdev->name;
	input->id.bustype	= BUS_HOST;
	input->id.vendor	= 0x0001;
	input->id.product	= 0x0001;
	input->id.version	= 0x0100;
	input->close		= gpio_beeper_close;
	input->event		= gpio_beeper_event;

	FUNC7(input, EV_SND, SND_BELL);

	FUNC8(input, beep);

	return FUNC6(input);
}