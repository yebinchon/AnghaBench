
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int connector_signal; scalar_t__ type; } ;
struct amdgpu_display_manager {struct dc_link* backlight_link; scalar_t__ backlight_dev; } ;


 int SIGNAL_TYPE_EDP ;
 int SIGNAL_TYPE_LVDS ;
 int amdgpu_dm_register_backlight_device (struct amdgpu_display_manager*) ;
 scalar_t__ dc_connection_none ;

__attribute__((used)) static void register_backlight_device(struct amdgpu_display_manager *dm,
          struct dc_link *link)
{
}
