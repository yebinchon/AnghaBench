
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_svc {int dummy; } ;
struct gb_interface {int interface_id; TYPE_1__* hd; } ;
struct TYPE_2__ {struct gb_svc* svc; } ;


 int gb_svc_intf_set_power_mode_hibernate (struct gb_svc*,int ) ;

__attribute__((used)) static int gb_interface_hibernate_link(struct gb_interface *intf)
{
 struct gb_svc *svc = intf->hd->svc;

 return gb_svc_intf_set_power_mode_hibernate(svc, intf->interface_id);
}
