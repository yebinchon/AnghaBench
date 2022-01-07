
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct geni_i2c_dev {TYPE_1__ se; int adap; } ;


 int i2c_del_adapter (int *) ;
 struct geni_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;

__attribute__((used)) static int geni_i2c_remove(struct platform_device *pdev)
{
 struct geni_i2c_dev *gi2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&gi2c->adap);
 pm_runtime_disable(gi2c->se.dev);
 return 0;
}
