
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp9xx_i2c_dev {int adapter; int irq; } ;
struct platform_device {int dummy; } ;


 int XLP9XX_I2C_CTRL ;
 int XLP9XX_I2C_INTEN ;
 int i2c_del_adapter (int *) ;
 struct xlp9xx_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int synchronize_irq (int ) ;
 int xlp9xx_write_i2c_reg (struct xlp9xx_i2c_dev*,int ,int ) ;

__attribute__((used)) static int xlp9xx_i2c_remove(struct platform_device *pdev)
{
 struct xlp9xx_i2c_dev *priv;

 priv = platform_get_drvdata(pdev);
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_INTEN, 0);
 synchronize_irq(priv->irq);
 i2c_del_adapter(&priv->adapter);
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_CTRL, 0);

 return 0;
}
