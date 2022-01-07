
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_file {int authenticated; } ;


 int CAP_SYS_ADMIN ;
 int DRM_AUTH ;
 int DRM_MASTER ;
 int DRM_RENDER_ALLOW ;
 int DRM_ROOT_ONLY ;
 int EACCES ;
 int capable (int ) ;
 int drm_is_current_master (struct drm_file*) ;
 scalar_t__ drm_is_render_client (struct drm_file*) ;
 scalar_t__ unlikely (int) ;

int drm_ioctl_permit(u32 flags, struct drm_file *file_priv)
{

 if (unlikely((flags & DRM_ROOT_ONLY) && !capable(CAP_SYS_ADMIN)))
  return -EACCES;


 if (unlikely((flags & DRM_AUTH) && !drm_is_render_client(file_priv) &&
       !file_priv->authenticated))
  return -EACCES;


 if (unlikely((flags & DRM_MASTER) &&
       !drm_is_current_master(file_priv)))
  return -EACCES;


 if (unlikely(!(flags & DRM_RENDER_ALLOW) &&
       drm_is_render_client(file_priv)))
  return -EACCES;

 return 0;
}
