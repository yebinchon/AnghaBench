
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; int dev_id; } ;


 int HIL_INTOFF ;
 scalar_t__ HIL_IRQ ;
 int free_irq (scalar_t__,int ) ;
 TYPE_1__ hil_dev ;
 int hil_do (int ,int *,int ) ;
 int input_unregister_device (int *) ;

__attribute__((used)) static void hil_keyb_exit(void)
{
 if (HIL_IRQ)
  free_irq(HIL_IRQ, hil_dev.dev_id);


 hil_do(HIL_INTOFF, ((void*)0), 0);

 input_unregister_device(hil_dev.dev);
 hil_dev.dev = ((void*)0);
}
