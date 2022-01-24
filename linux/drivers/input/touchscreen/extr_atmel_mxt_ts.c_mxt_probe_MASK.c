#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mxt_data {scalar_t__ reset_gpio; int /*<<< orphan*/  suspend_mode; int /*<<< orphan*/  crc_completion; int /*<<< orphan*/  reset_completion; int /*<<< orphan*/  bl_completion; int /*<<< orphan*/  irq; struct i2c_client* client; int /*<<< orphan*/  phys; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {int addr; TYPE_2__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; TYPE_1__* adapter; } ;
struct TYPE_8__ {int nr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MXT_RESET_GPIO_TIME ; 
 int /*<<< orphan*/  MXT_RESET_INVALID_CHG ; 
 int /*<<< orphan*/  MXT_SUSPEND_DEEP_SLEEP ; 
 int /*<<< orphan*/  MXT_SUSPEND_T9_CTRL ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  chromebook_T9_suspend_dmi ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct mxt_data* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxt_attr_group ; 
 int /*<<< orphan*/  FUNC14 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct mxt_data*) ; 
 int FUNC16 (struct mxt_data*) ; 
 int /*<<< orphan*/  mxt_interrupt ; 
 int FUNC17 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct mxt_data *data;
	int error;

	/*
	 * Ignore devices that do not have device properties attached to
	 * them, as we need help determining whether we are dealing with
	 * touch screen or touchpad.
	 *
	 * So far on x86 the only users of Atmel touch controllers are
	 * Chromebooks, and chromeos_laptop driver will ensure that
	 * necessary properties are provided (if firmware does not do that).
	 */
	if (!FUNC4(&client->dev, "compatible"))
		return -ENXIO;

	/*
	 * Ignore ACPI devices representing bootloader mode.
	 *
	 * This is a bit of a hack: Google Chromebook BIOS creates ACPI
	 * devices for both application and bootloader modes, but we are
	 * interested in application mode only (if device is in bootloader
	 * mode we'll end up switching into application anyway). So far
	 * application mode addresses were all above 0x40, so we'll use it
	 * as a threshold.
	 */
	if (FUNC0(&client->dev) && client->addr < 0x40)
		return -ENXIO;

	data = FUNC6(&client->dev, sizeof(struct mxt_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC18(data->phys, sizeof(data->phys), "i2c-%u-%04x/input0",
		 client->adapter->nr, client->addr);

	data->client = client;
	data->irq = client->irq;
	FUNC11(client, data);

	FUNC12(&data->bl_completion);
	FUNC12(&data->reset_completion);
	FUNC12(&data->crc_completion);

	data->suspend_mode = FUNC9(chromebook_T9_suspend_dmi) ?
		MXT_SUSPEND_T9_CTRL : MXT_SUSPEND_DEEP_SLEEP;

	error = FUNC17(data);
	if (error)
		return error;

	data->reset_gpio = FUNC5(&client->dev,
						   "reset", GPIOD_OUT_LOW);
	if (FUNC1(data->reset_gpio)) {
		error = FUNC2(data->reset_gpio);
		FUNC3(&client->dev, "Failed to get reset gpio: %d\n", error);
		return error;
	}

	error = FUNC7(&client->dev, client->irq,
					  NULL, mxt_interrupt, IRQF_ONESHOT,
					  client->name, data);
	if (error) {
		FUNC3(&client->dev, "Failed to register interrupt\n");
		return error;
	}

	FUNC8(client->irq);

	if (data->reset_gpio) {
		FUNC13(MXT_RESET_GPIO_TIME);
		FUNC10(data->reset_gpio, 1);
		FUNC13(MXT_RESET_INVALID_CHG);
	}

	error = FUNC16(data);
	if (error)
		return error;

	error = FUNC19(&client->dev.kobj, &mxt_attr_group);
	if (error) {
		FUNC3(&client->dev, "Failure %d creating sysfs group\n",
			error);
		goto err_free_object;
	}

	return 0;

err_free_object:
	FUNC14(data);
	FUNC15(data);
	return error;
}