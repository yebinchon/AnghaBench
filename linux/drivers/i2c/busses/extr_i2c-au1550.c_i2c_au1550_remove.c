
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_au1550_data {int adap; } ;


 int i2c_au1550_disable (struct i2c_au1550_data*) ;
 int i2c_del_adapter (int *) ;
 struct i2c_au1550_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_au1550_remove(struct platform_device *pdev)
{
 struct i2c_au1550_data *priv = platform_get_drvdata(pdev);

 i2c_del_adapter(&priv->adap);
 i2c_au1550_disable(priv);
 return 0;
}
