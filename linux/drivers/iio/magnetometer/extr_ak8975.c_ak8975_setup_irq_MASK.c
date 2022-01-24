#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
struct ak8975_data {int eoc_irq; int /*<<< orphan*/  eoc_gpio; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_ready_queue; struct i2c_client* client; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  ak8975_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ak8975_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ak8975_data *data)
{
	struct i2c_client *client = data->client;
	int rc;
	int irq;

	FUNC5(&data->data_ready_queue);
	FUNC0(0, &data->flags);
	if (client->irq)
		irq = client->irq;
	else
		irq = FUNC4(data->eoc_gpio);

	rc = FUNC3(&client->dev, irq, ak8975_irq_handler,
			      IRQF_TRIGGER_RISING | IRQF_ONESHOT,
			      FUNC2(&client->dev), data);
	if (rc < 0) {
		FUNC1(&client->dev,
			"irq %d request failed, (gpio %d): %d\n",
			irq, data->eoc_gpio, rc);
		return rc;
	}

	data->eoc_irq = irq;

	return rc;
}