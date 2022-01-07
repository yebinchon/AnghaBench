
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;
 struct i2c_adapter* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_opal_remove(struct platform_device *pdev)
{
 struct i2c_adapter *adapter = platform_get_drvdata(pdev);

 i2c_del_adapter(adapter);

 return 0;
}
