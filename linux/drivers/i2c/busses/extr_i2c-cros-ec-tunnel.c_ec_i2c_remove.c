
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ec_i2c_device {int adap; } ;


 int i2c_del_adapter (int *) ;
 struct ec_i2c_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ec_i2c_remove(struct platform_device *dev)
{
 struct ec_i2c_device *bus = platform_get_drvdata(dev);

 i2c_del_adapter(&bus->adap);

 return 0;
}
