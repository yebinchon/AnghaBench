
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct i2c_gpio_private_data {struct i2c_adapter adap; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;
 int i2c_gpio_fault_injector_exit (struct platform_device*) ;
 struct i2c_gpio_private_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_gpio_remove(struct platform_device *pdev)
{
 struct i2c_gpio_private_data *priv;
 struct i2c_adapter *adap;

 i2c_gpio_fault_injector_exit(pdev);

 priv = platform_get_drvdata(pdev);
 adap = &priv->adap;

 i2c_del_adapter(adap);

 return 0;
}
