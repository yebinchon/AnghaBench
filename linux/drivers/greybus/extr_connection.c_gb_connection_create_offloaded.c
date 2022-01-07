
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int dummy; } ;


 unsigned long GB_CONNECTION_FLAG_OFFLOADED ;
 struct gb_connection* gb_connection_create_flags (struct gb_bundle*,int ,int *,unsigned long) ;

struct gb_connection *
gb_connection_create_offloaded(struct gb_bundle *bundle, u16 cport_id,
          unsigned long flags)
{
 flags |= GB_CONNECTION_FLAG_OFFLOADED;

 return gb_connection_create_flags(bundle, cport_id, ((void*)0), flags);
}
