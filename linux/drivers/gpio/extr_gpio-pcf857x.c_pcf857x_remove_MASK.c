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
struct pcf857x_platform_data {int (* teardown ) (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; } ;
struct TYPE_2__ {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  base; } ;
struct pcf857x {TYPE_1__ chip; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 struct pcf857x_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct pcf857x* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct pcf857x_platform_data	*pdata = FUNC1(&client->dev);
	struct pcf857x			*gpio = FUNC2(client);
	int				status = 0;

	if (pdata && pdata->teardown) {
		status = pdata->teardown(client,
				gpio->chip.base, gpio->chip.ngpio,
				pdata->context);
		if (status < 0) {
			FUNC0(&client->dev, "%s --> %d\n",
					"teardown", status);
			return status;
		}
	}

	return status;
}