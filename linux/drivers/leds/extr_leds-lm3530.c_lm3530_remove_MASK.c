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
struct lm3530_data {int /*<<< orphan*/  led_dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct lm3530_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lm3530_data*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct lm3530_data *drvdata = FUNC0(client);

	FUNC2(drvdata);
	FUNC1(&drvdata->led_dev);
	return 0;
}