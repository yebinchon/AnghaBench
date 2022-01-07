
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_interface {int hd; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {struct gb_interface* intf; } ;
typedef int gb_request_handler_t ;


 unsigned long GB_CONNECTION_FLAG_CORE_MASK ;
 scalar_t__ WARN_ON_ONCE (unsigned long) ;
 struct gb_connection* _gb_connection_create (int ,int,struct gb_interface*,struct gb_bundle*,int ,int ,unsigned long) ;

struct gb_connection *
gb_connection_create_flags(struct gb_bundle *bundle, u16 cport_id,
      gb_request_handler_t handler,
      unsigned long flags)
{
 struct gb_interface *intf = bundle->intf;

 if (WARN_ON_ONCE(flags & GB_CONNECTION_FLAG_CORE_MASK))
  flags &= ~GB_CONNECTION_FLAG_CORE_MASK;

 return _gb_connection_create(intf->hd, -1, intf, bundle, cport_id,
         handler, flags);
}
