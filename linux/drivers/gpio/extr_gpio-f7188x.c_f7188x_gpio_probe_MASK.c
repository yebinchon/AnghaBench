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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct f7188x_sio {int type; } ;
struct f7188x_gpio_data {int nr_bank; struct f7188x_gpio_bank* bank; struct f7188x_sio* sio; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct f7188x_gpio_bank {TYPE_1__ chip; struct f7188x_gpio_data* data; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct f7188x_sio* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct f7188x_gpio_bank*) ; 
 struct f7188x_gpio_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
#define  f71869 134 
 void* f71869_gpio_bank ; 
#define  f71869a 133 
 void* f71869a_gpio_bank ; 
 void* f71882_gpio_bank ; 
#define  f71882fg 132 
 void* f71889_gpio_bank ; 
#define  f71889a 131 
 void* f71889a_gpio_bank ; 
#define  f71889f 130 
#define  f81804 129 
 void* f81804_gpio_bank ; 
#define  f81866 128 
 void* f81866_gpio_bank ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct f7188x_gpio_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int err;
	int i;
	struct f7188x_sio *sio = FUNC2(&pdev->dev);
	struct f7188x_gpio_data *data;

	data = FUNC4(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	switch (sio->type) {
	case f71869:
		data->nr_bank = FUNC0(f71869_gpio_bank);
		data->bank = f71869_gpio_bank;
		break;
	case f71869a:
		data->nr_bank = FUNC0(f71869a_gpio_bank);
		data->bank = f71869a_gpio_bank;
		break;
	case f71882fg:
		data->nr_bank = FUNC0(f71882_gpio_bank);
		data->bank = f71882_gpio_bank;
		break;
	case f71889a:
		data->nr_bank = FUNC0(f71889a_gpio_bank);
		data->bank = f71889a_gpio_bank;
		break;
	case f71889f:
		data->nr_bank = FUNC0(f71889_gpio_bank);
		data->bank = f71889_gpio_bank;
		break;
	case f81866:
		data->nr_bank = FUNC0(f81866_gpio_bank);
		data->bank = f81866_gpio_bank;
		break;
	case  f81804:
		data->nr_bank = FUNC0(f81804_gpio_bank);
		data->bank = f81804_gpio_bank;
		break;
	default:
		return -ENODEV;
	}
	data->sio = sio;

	FUNC5(pdev, data);

	/* For each GPIO bank, register a GPIO chip. */
	for (i = 0; i < data->nr_bank; i++) {
		struct f7188x_gpio_bank *bank = &data->bank[i];

		bank->chip.parent = &pdev->dev;
		bank->data = data;

		err = FUNC3(&pdev->dev, &bank->chip, bank);
		if (err) {
			FUNC1(&pdev->dev,
				"Failed to register gpiochip %d: %d\n",
				i, err);
			return err;
		}
	}

	return 0;
}