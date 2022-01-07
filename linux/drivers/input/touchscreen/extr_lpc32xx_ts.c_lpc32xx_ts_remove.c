
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct lpc32xx_tsc {int tsc_base; int clk; int dev; int irq; } ;


 int IORESOURCE_MEM ;
 int clk_put (int ) ;
 int free_irq (int ,struct lpc32xx_tsc*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct lpc32xx_tsc*) ;
 struct lpc32xx_tsc* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int lpc32xx_ts_remove(struct platform_device *pdev)
{
 struct lpc32xx_tsc *tsc = platform_get_drvdata(pdev);
 struct resource *res;

 free_irq(tsc->irq, tsc);

 input_unregister_device(tsc->dev);

 clk_put(tsc->clk);

 iounmap(tsc->tsc_base);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 kfree(tsc);

 return 0;
}
