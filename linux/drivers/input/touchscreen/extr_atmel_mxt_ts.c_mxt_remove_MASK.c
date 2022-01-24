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
struct mxt_data {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mxt_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  mxt_attr_group ; 
 int /*<<< orphan*/  FUNC2 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct mxt_data *data = FUNC1(client);

	FUNC0(data->irq);
	FUNC4(&client->dev.kobj, &mxt_attr_group);
	FUNC2(data);
	FUNC3(data);

	return 0;
}