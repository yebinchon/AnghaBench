
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_ps2data {int reg_base; int clk; int irq; int serio; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct sun4i_ps2data*) ;
 int iounmap (int ) ;
 int kfree (struct sun4i_ps2data*) ;
 struct sun4i_ps2data* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int sun4i_ps2_remove(struct platform_device *pdev)
{
 struct sun4i_ps2data *drvdata = platform_get_drvdata(pdev);

 serio_unregister_port(drvdata->serio);

 free_irq(drvdata->irq, drvdata);

 clk_disable_unprepare(drvdata->clk);
 clk_put(drvdata->clk);

 iounmap(drvdata->reg_base);

 kfree(drvdata);

 return 0;
}
