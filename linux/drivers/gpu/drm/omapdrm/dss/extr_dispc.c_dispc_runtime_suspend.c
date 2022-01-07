
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int is_enabled; int irq; } ;
struct device {int dummy; } ;


 struct dispc_device* dev_get_drvdata (struct device*) ;
 int dispc_save_context (struct dispc_device*) ;
 int smp_wmb () ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int dispc_runtime_suspend(struct device *dev)
{
 struct dispc_device *dispc = dev_get_drvdata(dev);

 dispc->is_enabled = 0;

 smp_wmb();

 synchronize_irq(dispc->irq);

 dispc_save_context(dispc);

 return 0;
}
