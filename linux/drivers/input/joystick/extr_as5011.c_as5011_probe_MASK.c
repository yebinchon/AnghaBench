#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct as5011_platform_data {int axis_irq; int axis_irqflags; int /*<<< orphan*/  button_gpio; } ;
struct as5011_device {int axis_irq; int button_irq; int /*<<< orphan*/  button_gpio; struct input_dev* input_dev; struct i2c_client* i2c_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  AS5011_FLAT ; 
 int /*<<< orphan*/  AS5011_FUZZ ; 
 int /*<<< orphan*/  AS5011_MAX_AXIS ; 
 int /*<<< orphan*/  AS5011_MIN_AXIS ; 
 int /*<<< orphan*/  BTN_JOYSTICK ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_NOSTART ; 
 int I2C_FUNC_PROTOCOL_MANGLING ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  as5011_axis_interrupt ; 
 int /*<<< orphan*/  as5011_button_interrupt ; 
 int FUNC0 (struct as5011_device*,struct as5011_platform_data const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct as5011_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct as5011_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct as5011_device*) ; 
 struct input_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct as5011_device*) ; 
 struct as5011_device* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct as5011_device*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	const struct as5011_platform_data *plat_data;
	struct as5011_device *as5011;
	struct input_dev *input_dev;
	int irq;
	int error;

	plat_data = FUNC2(&client->dev);
	if (!plat_data)
		return -EINVAL;

	if (!plat_data->axis_irq) {
		FUNC1(&client->dev, "No axis IRQ?\n");
		return -EINVAL;
	}

	if (!FUNC7(client->adapter,
				     I2C_FUNC_NOSTART |
				     I2C_FUNC_PROTOCOL_MANGLING)) {
		FUNC1(&client->dev,
			"need i2c bus that supports protocol mangling\n");
		return -ENODEV;
	}

	as5011 = FUNC15(sizeof(struct as5011_device), GFP_KERNEL);
	input_dev = FUNC9();
	if (!as5011 || !input_dev) {
		FUNC1(&client->dev,
			"Can't allocate memory for device structure\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	as5011->i2c_client = client;
	as5011->input_dev = input_dev;
	as5011->button_gpio = plat_data->button_gpio;
	as5011->axis_irq = plat_data->axis_irq;

	input_dev->name = "Austria Microsystem as5011 joystick";
	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = &client->dev;

	FUNC13(input_dev, EV_KEY, BTN_JOYSTICK);

	FUNC12(input_dev, ABS_X,
		AS5011_MIN_AXIS, AS5011_MAX_AXIS, AS5011_FUZZ, AS5011_FLAT);
	FUNC12(as5011->input_dev, ABS_Y,
		AS5011_MIN_AXIS, AS5011_MAX_AXIS, AS5011_FUZZ, AS5011_FLAT);

	error = FUNC5(as5011->button_gpio, "AS5011 button");
	if (error < 0) {
		FUNC1(&client->dev, "Failed to request button gpio\n");
		goto err_free_mem;
	}

	irq = FUNC6(as5011->button_gpio);
	if (irq < 0) {
		FUNC1(&client->dev,
			"Failed to get irq number for button gpio\n");
		error = irq;
		goto err_free_button_gpio;
	}

	as5011->button_irq = irq;

	error = FUNC16(as5011->button_irq,
				     NULL, as5011_button_interrupt,
				     IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				     "as5011_button", as5011);
	if (error < 0) {
		FUNC1(&client->dev,
			"Can't allocate button irq %d\n", as5011->button_irq);
		goto err_free_button_gpio;
	}

	error = FUNC0(as5011, plat_data);
	if (error)
		goto err_free_button_irq;

	error = FUNC16(as5011->axis_irq, NULL,
				     as5011_axis_interrupt,
				     plat_data->axis_irqflags | IRQF_ONESHOT,
				     "as5011_joystick", as5011);
	if (error) {
		FUNC1(&client->dev,
			"Can't allocate axis irq %d\n", plat_data->axis_irq);
		goto err_free_button_irq;
	}

	error = FUNC11(as5011->input_dev);
	if (error) {
		FUNC1(&client->dev, "Failed to register input device\n");
		goto err_free_axis_irq;
	}

	FUNC8(client, as5011);

	return 0;

err_free_axis_irq:
	FUNC3(as5011->axis_irq, as5011);
err_free_button_irq:
	FUNC3(as5011->button_irq, as5011);
err_free_button_gpio:
	FUNC4(as5011->button_gpio);
err_free_mem:
	FUNC10(input_dev);
	FUNC14(as5011);

	return error;
}