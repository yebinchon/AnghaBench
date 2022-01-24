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
struct migor_ts_priv {int /*<<< orphan*/  irq; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; int /*<<< orphan*/  keybit; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct migor_ts_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct migor_ts_priv*) ; 
 struct input_dev* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,struct migor_ts_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct migor_ts_priv*) ; 
 struct migor_ts_priv* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  migor_ts_close ; 
 int /*<<< orphan*/  migor_ts_isr ; 
 int /*<<< orphan*/  migor_ts_open ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct migor_ts_priv*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			  const struct i2c_device_id *idp)
{
	struct migor_ts_priv *priv;
	struct input_dev *input;
	int error;

	priv = FUNC12(sizeof(*priv), GFP_KERNEL);
	input = FUNC6();
	if (!priv || !input) {
		FUNC2(&client->dev, "failed to allocate memory\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	priv->client = client;
	priv->input = input;
	priv->irq = client->irq;

	input->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

	FUNC1(BTN_TOUCH, input->keybit);

	FUNC9(input, ABS_X, 95, 955, 0, 0);
	FUNC9(input, ABS_Y, 85, 935, 0, 0);

	input->name = client->name;
	input->id.bustype = BUS_I2C;
	input->dev.parent = &client->dev;

	input->open = migor_ts_open;
	input->close = migor_ts_close;

	FUNC10(input, priv);

	error = FUNC13(priv->irq, NULL, migor_ts_isr,
                                     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
                                     client->name, priv);
	if (error) {
		FUNC2(&client->dev, "Unable to request touchscreen IRQ.\n");
		goto err_free_mem;
	}

	error = FUNC8(input);
	if (error)
		goto err_free_irq;

	FUNC5(client, priv);
	FUNC3(&client->dev, 1);

	return 0;

 err_free_irq:
	FUNC4(priv->irq, priv);
 err_free_mem:
	FUNC7(input);
	FUNC11(priv);
	return error;
}