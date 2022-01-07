
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gb_svc {int device_id_map; int ap_intf_id; } ;
struct gb_interface {int interface_id; int device_id; int dev; TYPE_1__* hd; } ;
struct TYPE_2__ {struct gb_svc* svc; } ;


 int GB_SVC_DEVICE_ID_AP ;
 scalar_t__ GB_SVC_DEVICE_ID_MAX ;
 int GB_SVC_DEVICE_ID_MIN ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int,...) ;
 int gb_svc_intf_device_id (struct gb_svc*,int,int) ;
 int gb_svc_route_create (struct gb_svc*,int ,int ,int,int) ;
 int ida_simple_get (int *,int ,scalar_t__,int ) ;
 int ida_simple_remove (int *,int) ;

__attribute__((used)) static int gb_interface_route_create(struct gb_interface *intf)
{
 struct gb_svc *svc = intf->hd->svc;
 u8 intf_id = intf->interface_id;
 u8 device_id;
 int ret;


 ret = ida_simple_get(&svc->device_id_map,
        GB_SVC_DEVICE_ID_MIN, GB_SVC_DEVICE_ID_MAX + 1,
        GFP_KERNEL);
 if (ret < 0) {
  dev_err(&intf->dev, "failed to allocate device id: %d\n", ret);
  return ret;
 }
 device_id = ret;

 ret = gb_svc_intf_device_id(svc, intf_id, device_id);
 if (ret) {
  dev_err(&intf->dev, "failed to set device id %u: %d\n",
   device_id, ret);
  goto err_ida_remove;
 }


 ret = gb_svc_route_create(svc, svc->ap_intf_id, GB_SVC_DEVICE_ID_AP,
      intf_id, device_id);
 if (ret) {
  dev_err(&intf->dev, "failed to create route: %d\n", ret);
  goto err_svc_id_free;
 }

 intf->device_id = device_id;

 return 0;

err_svc_id_free:




err_ida_remove:
 ida_simple_remove(&svc->device_id_map, device_id);

 return ret;
}
