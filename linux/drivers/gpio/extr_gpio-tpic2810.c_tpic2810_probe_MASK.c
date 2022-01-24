#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct tpic2810 {TYPE_1__ chip; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct tpic2810* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,struct tpic2810*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct tpic2810*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ template_chip ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct tpic2810 *gpio;
	int ret;

	gpio = FUNC1(&client->dev, sizeof(*gpio), GFP_KERNEL);
	if (!gpio)
		return -ENOMEM;

	FUNC3(client, gpio);

	gpio->chip = template_chip;
	gpio->chip.parent = &client->dev;

	gpio->client = client;

	FUNC4(&gpio->lock);

	ret = FUNC2(&gpio->chip, gpio);
	if (ret < 0) {
		FUNC0(&client->dev, "Unable to register gpiochip\n");
		return ret;
	}

	return 0;
}