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
struct lm8333_platform_data {int active_time; int debounce_time; int /*<<< orphan*/  matrix_data; } ;
struct lm8333 {int /*<<< orphan*/  keycodes; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  LM8333_ACTIVE ; 
 int /*<<< orphan*/  LM8333_DEBOUNCE ; 
 int /*<<< orphan*/  LM8333_NUM_COLS ; 
 int /*<<< orphan*/  LM8333_NUM_ROWS ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm8333_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lm8333*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lm8333*) ; 
 struct input_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lm8333*) ; 
 struct lm8333* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm8333_irq_thread ; 
 int FUNC11 (struct lm8333*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct lm8333*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	const struct lm8333_platform_data *pdata =
			FUNC1(&client->dev);
	struct lm8333 *lm8333;
	struct input_dev *input;
	int err, active_time;

	if (!pdata)
		return -EINVAL;

	active_time = pdata->active_time ?: 500;
	if (active_time / 3 <= pdata->debounce_time / 3) {
		FUNC0(&client->dev, "Active time not big enough!\n");
		return -EINVAL;
	}

	lm8333 = FUNC10(sizeof(*lm8333), GFP_KERNEL);
	input = FUNC5();
	if (!lm8333 || !input) {
		err = -ENOMEM;
		goto free_mem;
	}

	lm8333->client = client;
	lm8333->input = input;

	input->name = client->name;
	input->dev.parent = &client->dev;
	input->id.bustype = BUS_I2C;

	FUNC8(input, EV_MSC, MSC_SCAN);

	err = FUNC12(pdata->matrix_data, NULL,
					 LM8333_NUM_ROWS, LM8333_NUM_COLS,
					 lm8333->keycodes, input);
	if (err)
		goto free_mem;

	if (pdata->debounce_time) {
		err = FUNC11(lm8333, LM8333_DEBOUNCE,
				    pdata->debounce_time / 3);
		if (err)
			FUNC2(&client->dev, "Unable to set debounce time\n");
	}

	if (pdata->active_time) {
		err = FUNC11(lm8333, LM8333_ACTIVE,
				    pdata->active_time / 3);
		if (err)
			FUNC2(&client->dev, "Unable to set active time\n");
	}

	err = FUNC13(client->irq, NULL, lm8333_irq_thread,
				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				   "lm8333", lm8333);
	if (err)
		goto free_mem;

	err = FUNC7(input);
	if (err)
		goto free_irq;

	FUNC4(client, lm8333);
	return 0;

 free_irq:
	FUNC3(client->irq, lm8333);
 free_mem:
	FUNC6(input);
	FUNC9(lm8333);
	return err;
}