
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct coresight_device {int orphan; TYPE_1__* pdata; } ;
struct coresight_connection {int * child_dev; int child_fwnode; } ;
struct TYPE_2__ {int nr_outport; struct coresight_connection* conns; } ;


 struct device* bus_find_device_by_fwnode (int *,int ) ;
 int coresight_bustype ;
 int put_device (struct device*) ;
 int * to_coresight_device (struct device*) ;

__attribute__((used)) static void coresight_fixup_device_conns(struct coresight_device *csdev)
{
 int i;

 for (i = 0; i < csdev->pdata->nr_outport; i++) {
  struct coresight_connection *conn = &csdev->pdata->conns[i];
  struct device *dev = ((void*)0);

  dev = bus_find_device_by_fwnode(&coresight_bustype, conn->child_fwnode);
  if (dev) {
   conn->child_dev = to_coresight_device(dev);

   put_device(dev);
  } else {
   csdev->orphan = 1;
   conn->child_dev = ((void*)0);
  }
 }
}
