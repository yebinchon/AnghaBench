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
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct device_node *np = client->dev.of_node;
	int gpio;
	int ret;

	if (!np)
		return -ENODEV;

	gpio = FUNC7(np, "wakeup-gpios", 0);
	if (!FUNC4(gpio))
		return -ENODEV;

	ret = FUNC5(gpio, "egalax_irq");
	if (ret < 0) {
		FUNC0(&client->dev,
			"request gpio failed, cannot wake up controller: %d\n",
			ret);
		return ret;
	}

	/* wake up controller via an falling edge on IRQ gpio. */
	FUNC2(gpio, 0);
	FUNC6(gpio, 1);

	/* controller should be waken up, return irq.  */
	FUNC1(gpio);
	FUNC3(gpio);

	return 0;
}