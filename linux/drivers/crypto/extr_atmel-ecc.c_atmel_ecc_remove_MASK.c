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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct atmel_i2c_client_priv {int /*<<< orphan*/  i2c_client_list_node; int /*<<< orphan*/  tfm_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_list_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  atmel_ecdh ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ driver_data ; 
 struct atmel_i2c_client_priv* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct atmel_i2c_client_priv *i2c_priv = FUNC3(client);

	/* Return EBUSY if i2c client already allocated. */
	if (FUNC0(&i2c_priv->tfm_count)) {
		FUNC2(&client->dev, "Device is busy\n");
		return -EBUSY;
	}

	FUNC1(&atmel_ecdh);

	FUNC5(&driver_data.i2c_list_lock);
	FUNC4(&i2c_priv->i2c_client_list_node);
	FUNC6(&driver_data.i2c_list_lock);

	return 0;
}