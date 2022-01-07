
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_host_device {int dev; struct gb_hd_driver* driver; } ;
struct gb_hd_driver {int (* cport_shutdown ) (struct gb_host_device*,int ,int ,int ) ;} ;
struct gb_connection {int name; int hd_cport_id; struct gb_host_device* hd; } ;


 int GB_OPERATION_TIMEOUT_DEFAULT ;
 int dev_err (int *,char*,int ,int ,int) ;
 scalar_t__ gb_connection_is_offloaded (struct gb_connection*) ;
 scalar_t__ gb_connection_is_static (struct gb_connection*) ;
 int gb_connection_shutdown_operation (struct gb_connection*,int ) ;
 int stub1 (struct gb_host_device*,int ,int ,int ) ;

__attribute__((used)) static int gb_connection_cport_shutdown(struct gb_connection *connection,
     u8 phase)
{
 struct gb_host_device *hd = connection->hd;
 const struct gb_hd_driver *drv = hd->driver;
 int ret;

 if (gb_connection_is_static(connection))
  return 0;

 if (gb_connection_is_offloaded(connection)) {
  if (!drv->cport_shutdown)
   return 0;

  ret = drv->cport_shutdown(hd, connection->hd_cport_id, phase,
       GB_OPERATION_TIMEOUT_DEFAULT);
 } else {
  ret = gb_connection_shutdown_operation(connection, phase);
 }

 if (ret) {
  dev_err(&hd->dev, "%s: failed to send cport shutdown (phase %d): %d\n",
   connection->name, phase, ret);
  return ret;
 }

 return 0;
}
