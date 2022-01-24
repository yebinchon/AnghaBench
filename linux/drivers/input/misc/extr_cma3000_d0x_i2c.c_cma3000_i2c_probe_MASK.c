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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct cma3000_accl_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cma3000_accl_data*) ; 
 int FUNC1 (struct cma3000_accl_data*) ; 
 int /*<<< orphan*/  cma3000_i2c_bops ; 
 struct cma3000_accl_data* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct cma3000_accl_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct cma3000_accl_data *data;

	data = FUNC2(&client->dev, client->irq, &cma3000_i2c_bops);
	if (FUNC0(data))
		return FUNC1(data);

	FUNC3(client, data);

	return 0;
}