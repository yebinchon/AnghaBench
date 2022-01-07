
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ fwnode; } ;
struct coresight_device {int orphan; TYPE_2__ dev; TYPE_1__* pdata; } ;
struct coresight_connection {scalar_t__ child_fwnode; int * child_dev; } ;
struct TYPE_3__ {int nr_outport; struct coresight_connection* conns; } ;


 int fwnode_handle_put (scalar_t__) ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static int coresight_remove_match(struct device *dev, void *data)
{
 int i;
 struct coresight_device *csdev, *iterator;
 struct coresight_connection *conn;

 csdev = data;
 iterator = to_coresight_device(dev);


 if (csdev == iterator)
  return 0;





 for (i = 0; i < iterator->pdata->nr_outport; i++) {
  conn = &iterator->pdata->conns[i];

  if (conn->child_dev == ((void*)0))
   continue;

  if (csdev->dev.fwnode == conn->child_fwnode) {
   iterator->orphan = 1;
   conn->child_dev = ((void*)0);





   fwnode_handle_put(conn->child_fwnode);

   break;
  }
 }





 return 0;
}
