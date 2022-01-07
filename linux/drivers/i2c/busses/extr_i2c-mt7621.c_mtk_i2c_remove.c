
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_i2c {int adap; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct mtk_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_i2c_remove(struct platform_device *pdev)
{
 struct mtk_i2c *i2c = platform_get_drvdata(pdev);

 clk_disable_unprepare(i2c->clk);
 i2c_del_adapter(&i2c->adap);

 return 0;
}
