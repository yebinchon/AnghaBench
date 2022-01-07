
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {int * user_data; int * user_handler; int irq; TYPE_1__* pdev; } ;
typedef int * irq_handler_t ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int devm_request_irq (int *,int ,int ,int ,char*,struct dispc_device*) ;
 int dispc_irq_handler ;
 int smp_wmb () ;

__attribute__((used)) static int dispc_request_irq(struct dispc_device *dispc, irq_handler_t handler,
        void *dev_id)
{
 int r;

 if (dispc->user_handler != ((void*)0))
  return -EBUSY;

 dispc->user_handler = handler;
 dispc->user_data = dev_id;


 smp_wmb();

 r = devm_request_irq(&dispc->pdev->dev, dispc->irq, dispc_irq_handler,
        IRQF_SHARED, "OMAP DISPC", dispc);
 if (r) {
  dispc->user_handler = ((void*)0);
  dispc->user_data = ((void*)0);
 }

 return r;
}
