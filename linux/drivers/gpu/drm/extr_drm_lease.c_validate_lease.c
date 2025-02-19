
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {scalar_t__ type; } ;
struct drm_device {int dummy; } ;


 scalar_t__ DRM_MODE_OBJECT_CONNECTOR ;
 scalar_t__ DRM_MODE_OBJECT_CRTC ;
 scalar_t__ DRM_MODE_OBJECT_PLANE ;
 int EINVAL ;

__attribute__((used)) static int validate_lease(struct drm_device *dev,
     int object_count,
     struct drm_mode_object **objects,
     bool universal_planes)
{
 int o;
 int has_crtc = -1;
 int has_connector = -1;
 int has_plane = -1;




 for (o = 0; o < object_count; o++) {
  if (objects[o]->type == DRM_MODE_OBJECT_CRTC && has_crtc == -1) {
   has_crtc = o;
  }
  if (objects[o]->type == DRM_MODE_OBJECT_CONNECTOR && has_connector == -1)
   has_connector = o;

  if (universal_planes) {
   if (objects[o]->type == DRM_MODE_OBJECT_PLANE && has_plane == -1)
    has_plane = o;
  }
 }
 if (has_crtc == -1 || has_connector == -1)
  return -EINVAL;
 if (universal_planes && has_plane == -1)
  return -EINVAL;
 return 0;
}
