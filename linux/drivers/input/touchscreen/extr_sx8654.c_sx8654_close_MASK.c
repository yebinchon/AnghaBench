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
struct sx8654 {TYPE_1__* data; int /*<<< orphan*/  timer; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_manual; int /*<<< orphan*/  has_irq_penrelease; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_REG_TOUCH0 ; 
 int /*<<< orphan*/  RATE_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sx8654* FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct sx8654 *sx8654 = FUNC5(dev);
	struct i2c_client *client = sx8654->client;
	int error;

	FUNC2(client->irq);

	if (!sx8654->data->has_irq_penrelease)
		FUNC0(&sx8654->timer);

	/* enable manual mode mode */
	error = FUNC3(client, sx8654->data->cmd_manual);
	if (error) {
		FUNC1(&client->dev, "writing command CMD_MANUAL failed");
		return;
	}

	error = FUNC4(client, I2C_REG_TOUCH0, RATE_MANUAL);
	if (error) {
		FUNC1(&client->dev, "writing to I2C_REG_TOUCH0 failed");
		return;
	}
}