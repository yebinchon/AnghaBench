
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ val; } ;
struct TYPE_5__ {TYPE_1__ init; } ;


 TYPE_3__* adapter_parm ;
 int * ara ;
 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (int *) ;
 int line_set (int ,TYPE_1__*) ;
 int parport_adapter ;
 TYPE_1__ parport_ctrl_irq ;
 size_t type ;

__attribute__((used)) static int i2c_parport_remove(struct platform_device *pdev)
{
 if (ara) {
  line_set(0, &parport_ctrl_irq);
  i2c_unregister_device(ara);
  ara = ((void*)0);
 }
 i2c_del_adapter(&parport_adapter);


 if (adapter_parm[type].init.val)
  line_set(0, &adapter_parm[type].init);

 return 0;
}
