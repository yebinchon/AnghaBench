
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_extcon_info {int role_sw; scalar_t__ id_extcon; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int EXTCON_USB_HOST ;
 int USB_ROLE_HOST ;
 scalar_t__ extcon_get_state (scalar_t__,int ) ;
 int usb_role_switch_get_role (int ) ;

__attribute__((used)) static bool axp288_get_id_pin(struct axp288_extcon_info *info)
{
 enum usb_role role;

 if (info->id_extcon)
  return extcon_get_state(info->id_extcon, EXTCON_USB_HOST) <= 0;


 role = usb_role_switch_get_role(info->role_sw);
 return role != USB_ROLE_HOST;
}
