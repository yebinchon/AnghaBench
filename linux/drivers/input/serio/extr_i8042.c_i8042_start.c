
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dev; struct i8042_port* port_data; } ;
struct i8042_port {int exists; } ;
struct TYPE_2__ {struct serio* serio; } ;


 size_t I8042_KBD_PORT_NO ;
 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int i8042_lock ;
 TYPE_1__* i8042_ports ;
 scalar_t__ pm_suspend_default_s2idle () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int i8042_start(struct serio *serio)
{
 struct i8042_port *port = serio->port_data;

 device_set_wakeup_capable(&serio->dev, 1);
 if (pm_suspend_default_s2idle() &&
     serio == i8042_ports[I8042_KBD_PORT_NO].serio) {
  device_set_wakeup_enable(&serio->dev, 1);
 }

 spin_lock_irq(&i8042_lock);
 port->exists = 1;
 spin_unlock_irq(&i8042_lock);

 return 0;
}
