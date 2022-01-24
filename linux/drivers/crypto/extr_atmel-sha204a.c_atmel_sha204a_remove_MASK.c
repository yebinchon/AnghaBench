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
struct TYPE_2__ {scalar_t__ priv; } ;
struct atmel_i2c_client_priv {TYPE_1__ hwrng; int /*<<< orphan*/  tfm_count; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct atmel_i2c_client_priv* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct atmel_i2c_client_priv *i2c_priv = FUNC2(client);

	if (FUNC0(&i2c_priv->tfm_count)) {
		FUNC1(&client->dev, "Device is busy\n");
		return -EBUSY;
	}

	if (i2c_priv->hwrng.priv)
		FUNC3((void *)i2c_priv->hwrng.priv);

	return 0;
}