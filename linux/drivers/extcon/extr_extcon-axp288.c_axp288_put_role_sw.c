
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_extcon_info {int role_sw; int role_work; } ;


 int cancel_work_sync (int *) ;
 int usb_role_switch_put (int ) ;

__attribute__((used)) static void axp288_put_role_sw(void *data)
{
 struct axp288_extcon_info *info = data;

 cancel_work_sync(&info->role_work);
 usb_role_switch_put(info->role_sw);
}
