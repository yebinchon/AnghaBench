
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa930_rotary {int mmio_base; int input_dev; } ;
struct platform_device {int dummy; } ;


 int free_irq (int ,struct pxa930_rotary*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct pxa930_rotary*) ;
 struct pxa930_rotary* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int pxa930_rotary_remove(struct platform_device *pdev)
{
 struct pxa930_rotary *r = platform_get_drvdata(pdev);

 free_irq(platform_get_irq(pdev, 0), r);
 input_unregister_device(r->input_dev);
 iounmap(r->mmio_base);
 kfree(r);

 return 0;
}
