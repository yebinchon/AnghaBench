
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp_i2c {int adapter; } ;
struct platform_device {int dummy; } ;


 int i2c_del_adapter (int *) ;
 struct tegra_bpmp_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_bpmp_i2c_remove(struct platform_device *pdev)
{
 struct tegra_bpmp_i2c *i2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c->adapter);

 return 0;
}
