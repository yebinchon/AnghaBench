
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_interface {int disconnected; int removed; int mutex; TYPE_1__* module; } ;
struct TYPE_2__ {scalar_t__ disconnected; } ;


 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_del (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_module_deregister_interface(struct gb_interface *intf)
{

 if (intf->module->disconnected)
  intf->disconnected = 1;

 mutex_lock(&intf->mutex);
 intf->removed = 1;
 gb_interface_disable(intf);
 gb_interface_deactivate(intf);
 mutex_unlock(&intf->mutex);

 gb_interface_del(intf);
}
