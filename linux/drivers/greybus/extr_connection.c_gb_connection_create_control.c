
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int hd; } ;
struct gb_connection {int dummy; } ;


 int GB_CONNECTION_FLAG_CONTROL ;
 int GB_CONNECTION_FLAG_HIGH_PRIO ;
 struct gb_connection* _gb_connection_create (int ,int,struct gb_interface*,int *,int ,int *,int) ;

struct gb_connection *
gb_connection_create_control(struct gb_interface *intf)
{
 return _gb_connection_create(intf->hd, -1, intf, ((void*)0), 0, ((void*)0),
         GB_CONNECTION_FLAG_CONTROL |
         GB_CONNECTION_FLAG_HIGH_PRIO);
}
