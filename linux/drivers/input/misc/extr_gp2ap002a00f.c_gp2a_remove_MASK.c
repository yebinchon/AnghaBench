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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct gp2a_platform_data {int /*<<< orphan*/  (* hw_shutdown ) (struct i2c_client*) ;int /*<<< orphan*/  vout_gpio; } ;
struct gp2a_data {int /*<<< orphan*/  input; struct gp2a_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gp2a_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gp2a_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gp2a_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct gp2a_data *dt = FUNC2(client);
	const struct gp2a_platform_data *pdata = dt->pdata;

	FUNC0(client->irq, dt);

	FUNC3(dt->input);
	FUNC4(dt);

	FUNC1(pdata->vout_gpio);

	if (pdata->hw_shutdown)
		pdata->hw_shutdown(client);

	return 0;
}