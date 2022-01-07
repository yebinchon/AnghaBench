
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dln2_i2c {int adapter; } ;


 int dln2_i2c_enable (struct dln2_i2c*,int) ;
 int i2c_del_adapter (int *) ;
 struct dln2_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dln2_i2c_remove(struct platform_device *pdev)
{
 struct dln2_i2c *dln2 = platform_get_drvdata(pdev);

 i2c_del_adapter(&dln2->adapter);
 dln2_i2c_enable(dln2, 0);

 return 0;
}
