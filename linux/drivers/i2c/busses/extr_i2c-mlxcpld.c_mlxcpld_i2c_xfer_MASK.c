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
typedef  int /*<<< orphan*/  u8 ;
struct mlxcpld_i2c_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct i2c_msg {scalar_t__ len; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mlxcpld_i2c_priv* FUNC1 (struct i2c_adapter*) ; 
 scalar_t__ FUNC2 (struct mlxcpld_i2c_priv*) ; 
 int FUNC3 (struct mlxcpld_i2c_priv*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxcpld_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxcpld_i2c_priv*,struct i2c_msg*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlxcpld_i2c_priv*) ; 
 int FUNC7 (struct mlxcpld_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxcpld_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adap, struct i2c_msg *msgs,
			    int num)
{
	struct mlxcpld_i2c_priv *priv = FUNC1(adap);
	u8 comm_len = 0;
	int i, err;

	err = FUNC3(priv, msgs, num);
	if (err) {
		FUNC0(priv->dev, "Incorrect message\n");
		return err;
	}

	for (i = 0; i < num; ++i)
		comm_len += msgs[i].len;

	/* Check bus state */
	if (FUNC6(priv)) {
		FUNC0(priv->dev, "LPCI2C bridge is busy\n");

		/*
		 * Usually it means something serious has happened.
		 * We can not have unfinished previous transfer
		 * so it doesn't make any sense to try to stop it.
		 * Probably we were not able to recover from the
		 * previous error.
		 * The only reasonable thing - is soft reset.
		 */
		FUNC4(priv);
		if (FUNC2(priv)) {
			FUNC0(priv->dev, "LPCI2C bridge is busy after reset\n");
			return -EIO;
		}
	}

	FUNC5(priv, msgs, num, comm_len);

	FUNC9(&priv->lock);

	/* Do real transfer. Can't fail */
	FUNC8(priv);

	/* Wait for transaction complete */
	err = FUNC7(priv);

	FUNC10(&priv->lock);

	return err < 0 ? err : num;
}