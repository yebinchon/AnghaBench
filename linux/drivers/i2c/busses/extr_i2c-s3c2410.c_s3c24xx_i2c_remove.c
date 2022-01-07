
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int adap; int clk; } ;
struct platform_device {int dev; } ;


 int clk_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct s3c24xx_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int s3c24xx_i2c_deregister_cpufreq (struct s3c24xx_i2c*) ;

__attribute__((used)) static int s3c24xx_i2c_remove(struct platform_device *pdev)
{
 struct s3c24xx_i2c *i2c = platform_get_drvdata(pdev);

 clk_unprepare(i2c->clk);

 pm_runtime_disable(&pdev->dev);

 s3c24xx_i2c_deregister_cpufreq(i2c);

 i2c_del_adapter(&i2c->adap);

 return 0;
}
