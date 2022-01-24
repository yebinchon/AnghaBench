#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int nr; TYPE_1__ dev; int /*<<< orphan*/ * quirks; int /*<<< orphan*/  timeout; } ;
struct mlxcpld_i2c_priv {int smbus_block; int /*<<< orphan*/  lock; TYPE_2__ adap; int /*<<< orphan*/  base_addr; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLXCPLD_I2C_DATA_SZ_BIT ; 
 int MLXCPLD_I2C_DATA_SZ_MASK ; 
 int MLXCPLD_I2C_SMBUS_BLK_BIT ; 
 int /*<<< orphan*/  MLXCPLD_I2C_XFER_TO ; 
 int /*<<< orphan*/  MLXCPLD_LPCI2C_CPBLTY_REG ; 
 int /*<<< orphan*/  MLXPLAT_CPLD_LPC_I2C_BASE_ADDR ; 
 struct mlxcpld_i2c_priv* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct mlxcpld_i2c_priv*) ; 
 TYPE_2__ mlxcpld_i2c_adapter ; 
 int /*<<< orphan*/  mlxcpld_i2c_quirks_ext ; 
 int /*<<< orphan*/  FUNC3 (struct mlxcpld_i2c_priv*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mlxcpld_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mlxcpld_i2c_priv *priv;
	int err;
	u8 val;

	priv = FUNC0(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC5(&priv->lock);
	FUNC6(pdev, priv);

	priv->dev = &pdev->dev;
	priv->base_addr = MLXPLAT_CPLD_LPC_I2C_BASE_ADDR;

	/* Register with i2c layer */
	mlxcpld_i2c_adapter.timeout = FUNC7(MLXCPLD_I2C_XFER_TO);
	/* Read capability register */
	FUNC3(priv, MLXCPLD_LPCI2C_CPBLTY_REG, &val, 1);
	/* Check support for extended transaction length */
	if ((val & MLXCPLD_I2C_DATA_SZ_MASK) == MLXCPLD_I2C_DATA_SZ_BIT)
		mlxcpld_i2c_adapter.quirks = &mlxcpld_i2c_quirks_ext;
	/* Check support for smbus block transaction */
	if (val & MLXCPLD_I2C_SMBUS_BLK_BIT)
		priv->smbus_block = true;
	if (pdev->id >= -1)
		mlxcpld_i2c_adapter.nr = pdev->id;
	priv->adap = mlxcpld_i2c_adapter;
	priv->adap.dev.parent = &pdev->dev;
	FUNC2(&priv->adap, priv);

	err = FUNC1(&priv->adap);
	if (err)
		FUNC4(&priv->lock);

	return err;
}