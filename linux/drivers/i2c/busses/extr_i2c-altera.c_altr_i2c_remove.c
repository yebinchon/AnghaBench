
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct altr_i2c_dev {int adapter; int i2c_clk; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct altr_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int altr_i2c_remove(struct platform_device *pdev)
{
 struct altr_i2c_dev *idev = platform_get_drvdata(pdev);

 clk_disable_unprepare(idev->i2c_clk);
 i2c_del_adapter(&idev->adapter);

 return 0;
}
