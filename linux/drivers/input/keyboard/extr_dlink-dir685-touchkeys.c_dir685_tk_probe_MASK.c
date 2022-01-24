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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct dir685_touchkeys {struct device* dev; TYPE_2__* input; int /*<<< orphan*/ * codes; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  bl_data ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_5__ {int keycodesize; int keycodemax; char* name; TYPE_1__ id; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_DOWN ; 
 int /*<<< orphan*/  KEY_ENTER ; 
 int /*<<< orphan*/  KEY_LEFT ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  KEY_RIGHT ; 
 int /*<<< orphan*/  KEY_UP ; 
 int /*<<< orphan*/  KEY_WPS_BUTTON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 TYPE_2__* FUNC5 (struct device*) ; 
 struct dir685_touchkeys* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct dir685_touchkeys*) ; 
 int /*<<< orphan*/  dir685_tk_irq_thread ; 
 int FUNC8 (struct i2c_client*,int*,int) ; 
 int FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct dir685_touchkeys *tk;
	struct device *dev = &client->dev;
	u8 bl_data[] = { 0xa7, 0x40 };
	int err;
	int i;

	tk = FUNC6(&client->dev, sizeof(*tk), GFP_KERNEL);
	if (!tk)
		return -ENOMEM;

	tk->input = FUNC5(dev);
	if (!tk->input)
		return -ENOMEM;

	tk->client = client;
	tk->dev = dev;

	tk->input->keycodesize = sizeof(u16);
	tk->input->keycodemax = FUNC0(tk->codes);
	tk->input->keycode = tk->codes;
	tk->codes[0] = KEY_UP;
	tk->codes[1] = KEY_DOWN;
	tk->codes[2] = KEY_LEFT;
	tk->codes[3] = KEY_RIGHT;
	tk->codes[4] = KEY_ENTER;
	tk->codes[5] = KEY_WPS_BUTTON;
	/*
	 * This key appears in the vendor driver, but I have
	 * not been able to activate it.
	 */
	tk->codes[6] = KEY_RESERVED;

	FUNC2(EV_KEY, tk->input->evbit);
	for (i = 0; i < FUNC0(tk->codes); i++)
		FUNC2(tk->codes[i], tk->input->keybit);
	FUNC1(KEY_RESERVED, tk->input->keybit);

	tk->input->name = "D-Link DIR-685 touchkeys";
	tk->input->id.bustype = BUS_I2C;

	err = FUNC9(tk->input);
	if (err)
		return err;

	/* Set the brightness to max level */
	err = FUNC8(client, bl_data, sizeof(bl_data));
	if (err != sizeof(bl_data))
		FUNC4(tk->dev, "error setting brightness level\n");

	if (!client->irq) {
		FUNC3(dev, "no IRQ on the I2C device\n");
		return -ENODEV;
	}
	err = FUNC7(dev, client->irq,
					NULL, dir685_tk_irq_thread,
					IRQF_ONESHOT,
					"dir685-tk", tk);
	if (err) {
		FUNC3(dev, "can't request IRQ\n");
		return err;
	}

	return 0;
}