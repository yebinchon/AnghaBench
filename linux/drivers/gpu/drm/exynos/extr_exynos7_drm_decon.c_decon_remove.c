
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct decon_context {int regs; } ;


 int component_del (int *,int *) ;
 int decon_component_ops ;
 struct decon_context* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int decon_remove(struct platform_device *pdev)
{
 struct decon_context *ctx = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);

 iounmap(ctx->regs);

 component_del(&pdev->dev, &decon_component_ops);

 return 0;
}
