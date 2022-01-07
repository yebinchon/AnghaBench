
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; } ;
struct drm_connector {int dummy; } ;


 int MODE_ERROR ;
 int MODE_OK ;

__attribute__((used)) static int fsl_dcu_drm_connector_mode_valid(struct drm_connector *connector,
         struct drm_display_mode *mode)
{
 if (mode->hdisplay & 0xf)
  return MODE_ERROR;

 return MODE_OK;
}
