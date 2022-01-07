
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dma_mask; } ;
struct gb_interface {TYPE_3__ dev; } ;
struct TYPE_5__ {int dma_mask; int groups; int * type; int * bus; TYPE_3__* parent; } ;
struct gb_control {struct gb_connection* connection; TYPE_1__ dev; struct gb_interface* intf; } ;
struct gb_connection {int dummy; } ;


 int ENOMEM ;
 struct gb_control* ERR_CAST (struct gb_connection*) ;
 struct gb_control* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int control_groups ;
 int dev_err (TYPE_3__*,char*,int ) ;
 int dev_name (TYPE_3__*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_initialize (TYPE_1__*) ;
 struct gb_connection* gb_connection_create_control (struct gb_interface*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_control*) ;
 int greybus_bus_type ;
 int greybus_control_type ;
 int kfree (struct gb_control*) ;
 struct gb_control* kzalloc (int,int ) ;

struct gb_control *gb_control_create(struct gb_interface *intf)
{
 struct gb_connection *connection;
 struct gb_control *control;

 control = kzalloc(sizeof(*control), GFP_KERNEL);
 if (!control)
  return ERR_PTR(-ENOMEM);

 control->intf = intf;

 connection = gb_connection_create_control(intf);
 if (IS_ERR(connection)) {
  dev_err(&intf->dev,
   "failed to create control connection: %ld\n",
   PTR_ERR(connection));
  kfree(control);
  return ERR_CAST(connection);
 }

 control->connection = connection;

 control->dev.parent = &intf->dev;
 control->dev.bus = &greybus_bus_type;
 control->dev.type = &greybus_control_type;
 control->dev.groups = control_groups;
 control->dev.dma_mask = intf->dev.dma_mask;
 device_initialize(&control->dev);
 dev_set_name(&control->dev, "%s.ctrl", dev_name(&intf->dev));

 gb_connection_set_data(control->connection, control);

 return control;
}
