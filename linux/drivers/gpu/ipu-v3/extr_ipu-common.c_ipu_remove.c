
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ipu_soc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int ipu_irq_exit (struct ipu_soc*) ;
 int ipu_submodules_exit (struct ipu_soc*) ;
 int platform_device_unregister_children (struct platform_device*) ;
 struct ipu_soc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ipu_remove(struct platform_device *pdev)
{
 struct ipu_soc *ipu = platform_get_drvdata(pdev);

 platform_device_unregister_children(pdev);
 ipu_submodules_exit(ipu);
 ipu_irq_exit(ipu);

 clk_disable_unprepare(ipu->clk);

 return 0;
}
