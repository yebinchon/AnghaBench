
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_svc {int device_id_map; int ap_intf_id; } ;
struct gb_interface {int device_id; int interface_id; TYPE_1__* hd; } ;
struct TYPE_2__ {struct gb_svc* svc; } ;


 int GB_INTERFACE_DEVICE_ID_BAD ;
 int gb_svc_route_destroy (struct gb_svc*,int ,int ) ;
 int ida_simple_remove (int *,int ) ;

__attribute__((used)) static void gb_interface_route_destroy(struct gb_interface *intf)
{
 struct gb_svc *svc = intf->hd->svc;

 if (intf->device_id == GB_INTERFACE_DEVICE_ID_BAD)
  return;

 gb_svc_route_destroy(svc, svc->ap_intf_id, intf->interface_id);
 ida_simple_remove(&svc->device_id_map, intf->device_id);
 intf->device_id = GB_INTERFACE_DEVICE_ID_BAD;
}
