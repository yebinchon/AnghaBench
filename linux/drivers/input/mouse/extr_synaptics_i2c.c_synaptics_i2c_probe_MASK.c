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
struct synaptics_i2c {int /*<<< orphan*/  input; TYPE_1__* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INTERRUPT_EN_REG ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct synaptics_i2c*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct synaptics_i2c*) ; 
 int polling_req ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct synaptics_i2c*) ; 
 int /*<<< orphan*/  scan_rate ; 
 int /*<<< orphan*/  synaptics_i2c_irq ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct synaptics_i2c*) ; 
 struct synaptics_i2c* FUNC12 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			       const struct i2c_device_id *dev_id)
{
	int ret;
	struct synaptics_i2c *touch;

	touch = FUNC12(client);
	if (!touch)
		return -ENOMEM;

	ret = FUNC10(client);
	if (ret)
		goto err_mem_free;

	if (client->irq < 1)
		polling_req = true;

	touch->input = FUNC4();
	if (!touch->input) {
		ret = -ENOMEM;
		goto err_mem_free;
	}

	FUNC11(touch);

	if (!polling_req) {
		FUNC0(&touch->client->dev,
			 "Requesting IRQ: %d\n", touch->client->irq);

		ret = FUNC8(touch->client->irq, synaptics_i2c_irq,
				  IRQ_TYPE_EDGE_FALLING,
				  DRIVER_NAME, touch);
		if (ret) {
			FUNC2(&touch->client->dev,
				  "IRQ request failed: %d, "
				  "falling back to polling\n", ret);
			polling_req = true;
			FUNC9(touch->client,
					      INTERRUPT_EN_REG, 0);
		}
	}

	if (polling_req)
		FUNC0(&touch->client->dev,
			 "Using polling at rate: %d times/sec\n", scan_rate);

	/* Register the device in input subsystem */
	ret = FUNC6(touch->input);
	if (ret) {
		FUNC1(&client->dev,
			 "Input device register failed: %d\n", ret);
		goto err_input_free;
	}

	FUNC3(client, touch);

	return 0;

err_input_free:
	FUNC5(touch->input);
err_mem_free:
	FUNC7(touch);

	return ret;
}