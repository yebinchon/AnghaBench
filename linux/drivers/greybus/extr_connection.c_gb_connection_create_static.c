
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_host_device {int dummy; } ;
struct gb_connection {int dummy; } ;
typedef int gb_request_handler_t ;


 int GB_CONNECTION_FLAG_HIGH_PRIO ;
 struct gb_connection* _gb_connection_create (struct gb_host_device*,int ,int *,int *,int ,int ,int ) ;

struct gb_connection *
gb_connection_create_static(struct gb_host_device *hd, u16 hd_cport_id,
       gb_request_handler_t handler)
{
 return _gb_connection_create(hd, hd_cport_id, ((void*)0), ((void*)0), 0, handler,
         GB_CONNECTION_FLAG_HIGH_PRIO);
}
