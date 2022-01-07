
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ fwnode; } ;
struct coresight_device {int orphan; TYPE_2__ dev; TYPE_1__* pdata; } ;
struct coresight_connection {scalar_t__ child_fwnode; struct coresight_device* child_dev; } ;
struct TYPE_3__ {int nr_outport; struct coresight_connection* conns; } ;


 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static int coresight_orphan_match(struct device *dev, void *data)
{
 int i;
 bool still_orphan = 0;
 struct coresight_device *csdev, *i_csdev;
 struct coresight_connection *conn;

 csdev = data;
 i_csdev = to_coresight_device(dev);


 if (csdev == i_csdev)
  return 0;


 if (!i_csdev->orphan)
  return 0;




 for (i = 0; i < i_csdev->pdata->nr_outport; i++) {
  conn = &i_csdev->pdata->conns[i];


  if (conn->child_dev == ((void*)0)) {

   if (conn->child_fwnode == csdev->dev.fwnode)
    conn->child_dev = csdev;
   else

    still_orphan = 1;
  }
 }

 i_csdev->orphan = still_orphan;





 return 0;
}
