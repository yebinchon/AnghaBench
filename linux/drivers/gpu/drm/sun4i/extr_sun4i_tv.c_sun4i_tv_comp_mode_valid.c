
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;


 int MODE_OK ;

__attribute__((used)) static int sun4i_tv_comp_mode_valid(struct drm_connector *connector,
        struct drm_display_mode *mode)
{

 return MODE_OK;
}
