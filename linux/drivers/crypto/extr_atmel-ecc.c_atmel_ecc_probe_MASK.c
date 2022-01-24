#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct atmel_i2c_client_priv {int /*<<< orphan*/  i2c_client_list_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_list_lock; int /*<<< orphan*/  i2c_client_list; } ;

/* Variables and functions */
 TYPE_3__ atmel_ecdh ; 
 int FUNC0 (struct i2c_client*,struct i2c_device_id const*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ driver_data ; 
 struct atmel_i2c_client_priv* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct atmel_i2c_client_priv *i2c_priv;
	int ret;

	ret = FUNC0(client, id);
	if (ret)
		return ret;

	i2c_priv = FUNC4(client);

	FUNC7(&driver_data.i2c_list_lock);
	FUNC5(&i2c_priv->i2c_client_list_node,
		      &driver_data.i2c_client_list);
	FUNC8(&driver_data.i2c_list_lock);

	ret = FUNC1(&atmel_ecdh);
	if (ret) {
		FUNC7(&driver_data.i2c_list_lock);
		FUNC6(&i2c_priv->i2c_client_list_node);
		FUNC8(&driver_data.i2c_list_lock);

		FUNC2(&client->dev, "%s alg registration failed\n",
			atmel_ecdh.base.cra_driver_name);
	} else {
		FUNC3(&client->dev, "atmel ecc algorithms registered in /proc/crypto\n");
	}

	return ret;
}