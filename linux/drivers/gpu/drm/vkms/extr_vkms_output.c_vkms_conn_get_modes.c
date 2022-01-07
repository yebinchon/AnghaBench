
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int XRES_DEF ;
 int XRES_MAX ;
 int YRES_DEF ;
 int YRES_MAX ;
 int drm_add_modes_noedid (struct drm_connector*,int ,int ) ;
 int drm_set_preferred_mode (struct drm_connector*,int ,int ) ;

__attribute__((used)) static int vkms_conn_get_modes(struct drm_connector *connector)
{
 int count;

 count = drm_add_modes_noedid(connector, XRES_MAX, YRES_MAX);
 drm_set_preferred_mode(connector, XRES_DEF, YRES_DEF);

 return count;
}
