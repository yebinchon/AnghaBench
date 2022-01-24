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
struct i2c_client {int dummy; } ;
struct bd2802_led {TYPE_2__* client; scalar_t__ adf_on; TYPE_1__* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bd2802_attributes ; 
 int /*<<< orphan*/  FUNC1 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC2 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bd2802_led* FUNC5 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct bd2802_led *led = FUNC5(client);
	int i;

	FUNC4(led->pdata->reset_gpio, 0);
	FUNC2(led);
	if (led->adf_on)
		FUNC1(led);
	for (i = 0; i < FUNC0(bd2802_attributes); i++)
		FUNC3(&led->client->dev, bd2802_attributes[i]);

	return 0;
}