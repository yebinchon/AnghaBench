
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_11__ {scalar_t__ val; } ;
struct TYPE_14__ {scalar_t__ smbus_alert; TYPE_2__ init; } ;
struct TYPE_13__ {scalar_t__ irq; } ;
struct TYPE_10__ {int * parent; } ;
struct TYPE_12__ {TYPE_1__ dev; } ;


 TYPE_9__* adapter_parm ;
 TYPE_6__ alert_data ;
 scalar_t__ ara ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int i2c_bit_add_bus (TYPE_3__*) ;
 scalar_t__ i2c_setup_smbus_alert (TYPE_3__*,TYPE_6__*) ;
 scalar_t__ irq ;
 int line_set (int,TYPE_2__*) ;
 int msleep (int) ;
 TYPE_3__ parport_adapter ;
 TYPE_2__ parport_ctrl_irq ;
 int parport_setscl (int *,int) ;
 int parport_setsda (int *,int) ;
 size_t type ;

__attribute__((used)) static int i2c_parport_probe(struct platform_device *pdev)
{
 int err;


 parport_setsda(((void*)0), 1);
 parport_setscl(((void*)0), 1);

 if (adapter_parm[type].init.val) {
  line_set(1, &adapter_parm[type].init);

  msleep(100);
 }

 parport_adapter.dev.parent = &pdev->dev;
 err = i2c_bit_add_bus(&parport_adapter);
 if (err) {
  dev_err(&pdev->dev, "Unable to register with I2C\n");
  return err;
 }


 if (adapter_parm[type].smbus_alert && irq) {
  alert_data.irq = irq;
  ara = i2c_setup_smbus_alert(&parport_adapter, &alert_data);
  if (ara)
   line_set(1, &parport_ctrl_irq);
  else
   dev_warn(&pdev->dev, "Failed to register ARA client\n");
 }

 return 0;
}
