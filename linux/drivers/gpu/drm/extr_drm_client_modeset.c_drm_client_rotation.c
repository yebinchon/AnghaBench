
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct drm_plane {TYPE_3__* rotation_property; } ;
struct drm_mode_set {int num_connectors; TYPE_1__* crtc; struct drm_connector** connectors; } ;
struct drm_cmdline_mode {unsigned int rotation_reflection; scalar_t__ specified; } ;
struct TYPE_5__ {int panel_orientation; } ;
struct drm_connector {struct drm_cmdline_mode cmdline_mode; TYPE_2__ display_info; } ;
struct TYPE_6__ {unsigned int num_values; unsigned long long* values; } ;
struct TYPE_4__ {struct drm_plane* primary; } ;





 unsigned int DRM_MODE_ROTATE_0 ;
 unsigned int DRM_MODE_ROTATE_180 ;
 unsigned int DRM_MODE_ROTATE_270 ;
 unsigned int DRM_MODE_ROTATE_90 ;
 unsigned int DRM_MODE_ROTATE_MASK ;
 unsigned int ilog2 (unsigned int) ;

bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
{
 struct drm_connector *connector = modeset->connectors[0];
 struct drm_plane *plane = modeset->crtc->primary;
 struct drm_cmdline_mode *cmdline;
 u64 valid_mask = 0;
 unsigned int i;

 if (!modeset->num_connectors)
  return 0;

 switch (connector->display_info.panel_orientation) {
 case 130:
  *rotation = DRM_MODE_ROTATE_180;
  break;
 case 129:
  *rotation = DRM_MODE_ROTATE_90;
  break;
 case 128:
  *rotation = DRM_MODE_ROTATE_270;
  break;
 default:
  *rotation = DRM_MODE_ROTATE_0;
 }
 cmdline = &connector->cmdline_mode;
 if (cmdline->specified && cmdline->rotation_reflection) {
  unsigned int cmdline_rest, panel_rest;
  unsigned int cmdline_rot, panel_rot;
  unsigned int sum_rot, sum_rest;

  panel_rot = ilog2(*rotation & DRM_MODE_ROTATE_MASK);
  cmdline_rot = ilog2(cmdline->rotation_reflection & DRM_MODE_ROTATE_MASK);
  sum_rot = (panel_rot + cmdline_rot) % 4;

  panel_rest = *rotation & ~DRM_MODE_ROTATE_MASK;
  cmdline_rest = cmdline->rotation_reflection & ~DRM_MODE_ROTATE_MASK;
  sum_rest = panel_rest ^ cmdline_rest;

  *rotation = (1 << sum_rot) | sum_rest;
 }






 if ((*rotation & DRM_MODE_ROTATE_MASK) != DRM_MODE_ROTATE_180 ||
     !plane->rotation_property)
  return 0;

 for (i = 0; i < plane->rotation_property->num_values; i++)
  valid_mask |= (1ULL << plane->rotation_property->values[i]);

 if (!(*rotation & valid_mask))
  return 0;

 return 1;
}
