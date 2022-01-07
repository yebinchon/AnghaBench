
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_connection {int intf_cport_id; TYPE_2__* intf; int hd_cport_id; TYPE_1__* hd; } ;
struct TYPE_6__ {int ap_intf_id; } ;
struct TYPE_5__ {int interface_id; } ;
struct TYPE_4__ {TYPE_3__* svc; } ;


 scalar_t__ gb_connection_is_static (struct gb_connection*) ;
 int gb_svc_connection_destroy (TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static void
gb_connection_svc_connection_destroy(struct gb_connection *connection)
{
 if (gb_connection_is_static(connection))
  return;

 gb_svc_connection_destroy(connection->hd->svc,
      connection->hd->svc->ap_intf_id,
      connection->hd_cport_id,
      connection->intf->interface_id,
      connection->intf_cport_id);
}
