
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_i2c_dev {int adap; } ;
struct platform_device {int dummy; } ;


 int i2c_del_adapter (int *) ;
 struct st_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int st_i2c_remove(struct platform_device *pdev)
{
 struct st_i2c_dev *i2c_dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c_dev->adap);

 return 0;
}
