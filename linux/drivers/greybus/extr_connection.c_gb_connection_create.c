
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_interface {int hd; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {struct gb_interface* intf; } ;
typedef int gb_request_handler_t ;


 struct gb_connection* _gb_connection_create (int ,int,struct gb_interface*,struct gb_bundle*,int ,int ,int ) ;

struct gb_connection *
gb_connection_create(struct gb_bundle *bundle, u16 cport_id,
       gb_request_handler_t handler)
{
 struct gb_interface *intf = bundle->intf;

 return _gb_connection_create(intf->hd, -1, intf, bundle, cport_id,
         handler, 0);
}
