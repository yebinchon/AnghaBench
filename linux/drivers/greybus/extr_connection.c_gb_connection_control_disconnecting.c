
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct gb_control {int dummy; } ;
struct gb_connection {int name; TYPE_2__* hd; TYPE_1__* intf; int intf_cport_id; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct gb_control* control; } ;


 int dev_err (int *,char*,int ,int) ;
 scalar_t__ gb_connection_is_static (struct gb_connection*) ;
 int gb_control_disconnecting_operation (struct gb_control*,int ) ;

__attribute__((used)) static void
gb_connection_control_disconnecting(struct gb_connection *connection)
{
 struct gb_control *control;
 u16 cport_id = connection->intf_cport_id;
 int ret;

 if (gb_connection_is_static(connection))
  return;

 control = connection->intf->control;

 ret = gb_control_disconnecting_operation(control, cport_id);
 if (ret) {
  dev_err(&connection->hd->dev,
   "%s: failed to send disconnecting: %d\n",
   connection->name, ret);
 }
}
