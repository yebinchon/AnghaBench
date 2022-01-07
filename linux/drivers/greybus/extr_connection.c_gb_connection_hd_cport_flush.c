
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_host_device {int dev; TYPE_1__* driver; } ;
struct gb_connection {int name; int hd_cport_id; struct gb_host_device* hd; } ;
struct TYPE_2__ {int (* cport_flush ) (struct gb_host_device*,int ) ;} ;


 int dev_err (int *,char*,int ,int) ;
 int stub1 (struct gb_host_device*,int ) ;

__attribute__((used)) static int gb_connection_hd_cport_flush(struct gb_connection *connection)
{
 struct gb_host_device *hd = connection->hd;
 int ret;

 if (!hd->driver->cport_flush)
  return 0;

 ret = hd->driver->cport_flush(hd, connection->hd_cport_id);
 if (ret) {
  dev_err(&hd->dev, "%s: failed to flush host cport: %d\n",
   connection->name, ret);
  return ret;
 }

 return 0;
}
