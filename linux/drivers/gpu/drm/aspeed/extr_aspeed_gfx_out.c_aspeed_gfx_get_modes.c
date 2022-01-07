
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int drm_add_modes_noedid (struct drm_connector*,int,int) ;

__attribute__((used)) static int aspeed_gfx_get_modes(struct drm_connector *connector)
{
 return drm_add_modes_noedid(connector, 800, 600);
}
