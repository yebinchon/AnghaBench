
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coresight_device {int dev; TYPE_1__* pdata; } ;
struct coresight_connection {int child_port; struct coresight_device* child_dev; } ;
struct TYPE_2__ {int nr_outport; struct coresight_connection* conns; } ;


 int ENODEV ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_name (int *) ;

__attribute__((used)) static int coresight_find_link_inport(struct coresight_device *csdev,
          struct coresight_device *parent)
{
 int i;
 struct coresight_connection *conn;

 for (i = 0; i < parent->pdata->nr_outport; i++) {
  conn = &parent->pdata->conns[i];
  if (conn->child_dev == csdev)
   return conn->child_port;
 }

 dev_err(&csdev->dev, "couldn't find inport, parent: %s, child: %s\n",
  dev_name(&parent->dev), dev_name(&csdev->dev));

 return -ENODEV;
}
