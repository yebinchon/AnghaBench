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
struct mcs_touchkey_data {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  (* poweron ) (int) ;} ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mcs_touchkey_data*) ; 
 struct mcs_touchkey_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mcs_touchkey_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct mcs_touchkey_data *data = FUNC1(client);

	FUNC0(client->irq, data);
	if (data->poweron)
		data->poweron(false);
	FUNC2(data->input_dev);
	FUNC3(data);

	return 0;
}