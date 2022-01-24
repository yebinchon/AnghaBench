#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct pm860x_led_pdata {int /*<<< orphan*/  iset; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* brightness_set_blocking ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;
struct pm860x_led {int port; TYPE_1__ cdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; scalar_t__ current_brightness; int /*<<< orphan*/  iset; int /*<<< orphan*/  i2c; struct pm860x_chip* chip; void* blink_mask; int /*<<< orphan*/  reg_blink; int /*<<< orphan*/  reg_control; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  companion; int /*<<< orphan*/  client; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_3__ dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_PM8606 ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_REG ; 
 void* LED1_BLINK_EN ; 
 void* LED2_BLINK_EN ; 
 int /*<<< orphan*/  MFD_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 struct pm860x_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 struct pm860x_led_pdata* FUNC2 (TYPE_3__*) ; 
 struct pm860x_led* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct platform_device*,struct pm860x_led*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC1(pdev->dev.parent);
	struct pm860x_led_pdata *pdata = FUNC2(&pdev->dev);
	struct pm860x_led *data;
	struct resource *res;
	int ret = 0;

	data = FUNC3(&pdev->dev, sizeof(struct pm860x_led), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;
	res = FUNC7(pdev, IORESOURCE_REG, "control");
	if (!res) {
		FUNC0(&pdev->dev, "No REG resource for control\n");
		return -ENXIO;
	}
	data->reg_control = res->start;
	res = FUNC7(pdev, IORESOURCE_REG, "blink");
	if (!res) {
		FUNC0(&pdev->dev, "No REG resource for blink\n");
		return -ENXIO;
	}
	data->reg_blink = res->start;
	FUNC5(data->name, 0, MFD_NAME_SIZE);
	switch (pdev->id) {
	case 0:
		data->blink_mask = LED1_BLINK_EN;
		FUNC10(data->name, "led0-red");
		break;
	case 1:
		data->blink_mask = LED1_BLINK_EN;
		FUNC10(data->name, "led0-green");
		break;
	case 2:
		data->blink_mask = LED1_BLINK_EN;
		FUNC10(data->name, "led0-blue");
		break;
	case 3:
		data->blink_mask = LED2_BLINK_EN;
		FUNC10(data->name, "led1-red");
		break;
	case 4:
		data->blink_mask = LED2_BLINK_EN;
		FUNC10(data->name, "led1-green");
		break;
	case 5:
		data->blink_mask = LED2_BLINK_EN;
		FUNC10(data->name, "led1-blue");
		break;
	}
	data->chip = chip;
	data->i2c = (chip->id == CHIP_PM8606) ? chip->client : chip->companion;
	data->port = pdev->id;
	if (FUNC8(pdev, data))
		if (pdata)
			data->iset = pdata->iset;

	data->current_brightness = 0;
	data->cdev.name = data->name;
	data->cdev.brightness_set_blocking = pm860x_led_set;
	FUNC6(&data->lock);

	ret = FUNC4(chip->dev, &data->cdev);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Failed to register LED: %d\n", ret);
		return ret;
	}
	FUNC9(&data->cdev, 0);
	return 0;
}