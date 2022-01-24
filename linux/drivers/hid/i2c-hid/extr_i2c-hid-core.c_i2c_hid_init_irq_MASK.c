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
struct i2c_hid {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i2c_hid* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  i2c_hid_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct i2c_hid*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct i2c_hid *ihid = FUNC2(client);
	unsigned long irqflags = 0;
	int ret;

	FUNC0(&client->dev, "Requesting IRQ: %d\n", client->irq);

	if (!FUNC3(client->irq))
		irqflags = IRQF_TRIGGER_LOW;

	ret = FUNC4(client->irq, NULL, i2c_hid_irq,
				   irqflags | IRQF_ONESHOT, client->name, ihid);
	if (ret < 0) {
		FUNC1(&client->dev,
			"Could not register for %s interrupt, irq = %d,"
			" ret = %d\n",
			client->name, client->irq, ret);

		return ret;
	}

	return 0;
}