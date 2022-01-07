
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int id; int dev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_6__ {int nr; TYPE_1__ dev; int * quirks; int timeout; } ;
struct mlxcpld_i2c_priv {int smbus_block; int lock; TYPE_2__ adap; int base_addr; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXCPLD_I2C_DATA_SZ_BIT ;
 int MLXCPLD_I2C_DATA_SZ_MASK ;
 int MLXCPLD_I2C_SMBUS_BLK_BIT ;
 int MLXCPLD_I2C_XFER_TO ;
 int MLXCPLD_LPCI2C_CPBLTY_REG ;
 int MLXPLAT_CPLD_LPC_I2C_BASE_ADDR ;
 struct mlxcpld_i2c_priv* devm_kzalloc (int *,int,int ) ;
 int i2c_add_numbered_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct mlxcpld_i2c_priv*) ;
 TYPE_2__ mlxcpld_i2c_adapter ;
 int mlxcpld_i2c_quirks_ext ;
 int mlxcpld_i2c_read_comm (struct mlxcpld_i2c_priv*,int ,int*,int) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct mlxcpld_i2c_priv*) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static int mlxcpld_i2c_probe(struct platform_device *pdev)
{
 struct mlxcpld_i2c_priv *priv;
 int err;
 u8 val;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->lock);
 platform_set_drvdata(pdev, priv);

 priv->dev = &pdev->dev;
 priv->base_addr = MLXPLAT_CPLD_LPC_I2C_BASE_ADDR;


 mlxcpld_i2c_adapter.timeout = usecs_to_jiffies(MLXCPLD_I2C_XFER_TO);

 mlxcpld_i2c_read_comm(priv, MLXCPLD_LPCI2C_CPBLTY_REG, &val, 1);

 if ((val & MLXCPLD_I2C_DATA_SZ_MASK) == MLXCPLD_I2C_DATA_SZ_BIT)
  mlxcpld_i2c_adapter.quirks = &mlxcpld_i2c_quirks_ext;

 if (val & MLXCPLD_I2C_SMBUS_BLK_BIT)
  priv->smbus_block = 1;
 if (pdev->id >= -1)
  mlxcpld_i2c_adapter.nr = pdev->id;
 priv->adap = mlxcpld_i2c_adapter;
 priv->adap.dev.parent = &pdev->dev;
 i2c_set_adapdata(&priv->adap, priv);

 err = i2c_add_numbered_adapter(&priv->adap);
 if (err)
  mutex_destroy(&priv->lock);

 return err;
}
