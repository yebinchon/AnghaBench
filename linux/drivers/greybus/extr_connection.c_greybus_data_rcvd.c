
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gb_host_device {int dev; } ;
struct gb_connection {int dummy; } ;


 int dev_err (int *,char*,size_t) ;
 struct gb_connection* gb_connection_hd_find (struct gb_host_device*,int ) ;
 int gb_connection_put (struct gb_connection*) ;
 int gb_connection_recv (struct gb_connection*,int *,size_t) ;
 int trace_gb_hd_in (struct gb_host_device*) ;

void greybus_data_rcvd(struct gb_host_device *hd, u16 cport_id,
         u8 *data, size_t length)
{
 struct gb_connection *connection;

 trace_gb_hd_in(hd);

 connection = gb_connection_hd_find(hd, cport_id);
 if (!connection) {
  dev_err(&hd->dev,
   "nonexistent connection (%zu bytes dropped)\n", length);
  return;
 }
 gb_connection_recv(connection, data, length);
 gb_connection_put(connection);
}
