
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_host_device {int dev; TYPE_1__* driver; } ;
struct gb_connection {int name; struct gb_host_device* hd; int hd_cport_id; } ;
struct TYPE_2__ {int (* latency_tag_disable ) (struct gb_host_device*,int ) ;} ;


 int dev_err (int *,char*,int ,int) ;
 int stub1 (struct gb_host_device*,int ) ;

void gb_connection_latency_tag_disable(struct gb_connection *connection)
{
 struct gb_host_device *hd = connection->hd;
 int ret;

 if (!hd->driver->latency_tag_disable)
  return;

 ret = hd->driver->latency_tag_disable(hd, connection->hd_cport_id);
 if (ret) {
  dev_err(&connection->hd->dev,
   "%s: failed to disable latency tag: %d\n",
   connection->name, ret);
 }
}
