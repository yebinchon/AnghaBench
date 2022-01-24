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
struct lp3952_led_array {int /*<<< orphan*/  enable_gpio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP3952_LED_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lp3952_led_array* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp3952_led_array*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct lp3952_led_array *priv;

	priv = FUNC1(client);
	FUNC2(priv, LP3952_LED_ALL, false);
	FUNC0(priv->enable_gpio, 0);

	return 0;
}