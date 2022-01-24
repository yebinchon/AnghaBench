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
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
struct elan_tp_data {int in_fw_update; TYPE_1__* ops; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iap_reset ) (struct i2c_client*) ;} ;

/* Variables and functions */
 int FUNC0 (struct elan_tp_data*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct elan_tp_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct elan_tp_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct elan_tp_data *data,
				const struct firmware *fw)
{
	struct i2c_client *client = data->client;
	int retval;

	FUNC1(&client->dev, "Starting firmware update....\n");

	FUNC3(client->irq);
	data->in_fw_update = true;

	retval = FUNC0(data, fw);
	if (retval) {
		FUNC2(&client->dev, "firmware update failed: %d\n", retval);
		data->ops->iap_reset(client);
	} else {
		/* Reinitialize TP after fw is updated */
		FUNC4(data);
		FUNC5(data);
	}

	data->in_fw_update = false;
	FUNC6(client->irq);

	return retval;
}