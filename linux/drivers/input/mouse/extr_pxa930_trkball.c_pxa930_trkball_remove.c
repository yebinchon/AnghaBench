
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa930_trkball {int mmio_base; int input; } ;
struct platform_device {int dummy; } ;


 int free_irq (int,struct pxa930_trkball*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct pxa930_trkball*) ;
 struct pxa930_trkball* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int pxa930_trkball_remove(struct platform_device *pdev)
{
 struct pxa930_trkball *trkball = platform_get_drvdata(pdev);
 int irq = platform_get_irq(pdev, 0);

 input_unregister_device(trkball->input);
 free_irq(irq, trkball);
 iounmap(trkball->mmio_base);
 kfree(trkball);

 return 0;
}
