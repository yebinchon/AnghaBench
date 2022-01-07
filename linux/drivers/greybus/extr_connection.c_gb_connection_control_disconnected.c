
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct gb_control {int dummy; } ;
struct gb_connection {TYPE_2__* bundle; scalar_t__ mode_switch; TYPE_1__* intf; int intf_cport_id; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct gb_control* control; } ;


 int dev_warn (int *,char*,int) ;
 scalar_t__ gb_connection_is_control (struct gb_connection*) ;
 scalar_t__ gb_connection_is_static (struct gb_connection*) ;
 int gb_control_disconnected_operation (struct gb_control*,int ) ;
 int gb_control_mode_switch_operation (struct gb_control*) ;

__attribute__((used)) static void
gb_connection_control_disconnected(struct gb_connection *connection)
{
 struct gb_control *control;
 u16 cport_id = connection->intf_cport_id;
 int ret;

 if (gb_connection_is_static(connection))
  return;

 control = connection->intf->control;

 if (gb_connection_is_control(connection)) {
  if (connection->mode_switch) {
   ret = gb_control_mode_switch_operation(control);
   if (ret) {




    return;
   }
  }

  return;
 }

 ret = gb_control_disconnected_operation(control, cport_id);
 if (ret) {
  dev_warn(&connection->bundle->dev,
    "failed to disconnect cport: %d\n", ret);
 }
}
