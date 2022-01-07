
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct gb_connection {int hd_cport_id; int intf_cport_id; int name; TYPE_1__* intf; } ;
struct TYPE_2__ {int interface_id; } ;


 int snprintf (int ,int,char*,int,int,int) ;

__attribute__((used)) static void gb_connection_init_name(struct gb_connection *connection)
{
 u16 hd_cport_id = connection->hd_cport_id;
 u16 cport_id = 0;
 u8 intf_id = 0;

 if (connection->intf) {
  intf_id = connection->intf->interface_id;
  cport_id = connection->intf_cport_id;
 }

 snprintf(connection->name, sizeof(connection->name),
   "%u/%u:%u", hd_cport_id, intf_id, cport_id);
}
