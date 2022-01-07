
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_OK ;

__attribute__((used)) static enum drm_mode_status
nv50_mstc_mode_valid(struct drm_connector *connector,
       struct drm_display_mode *mode)
{
 return MODE_OK;
}
