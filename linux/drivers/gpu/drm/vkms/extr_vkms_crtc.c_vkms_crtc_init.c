
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_output {int composer_workq; int composer_lock; int lock; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 int spin_lock_init (int *) ;
 int vkms_crtc_funcs ;
 int vkms_crtc_helper_funcs ;

int vkms_crtc_init(struct drm_device *dev, struct drm_crtc *crtc,
     struct drm_plane *primary, struct drm_plane *cursor)
{
 struct vkms_output *vkms_out = drm_crtc_to_vkms_output(crtc);
 int ret;

 ret = drm_crtc_init_with_planes(dev, crtc, primary, cursor,
     &vkms_crtc_funcs, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to init CRTC\n");
  return ret;
 }

 drm_crtc_helper_add(crtc, &vkms_crtc_helper_funcs);

 spin_lock_init(&vkms_out->lock);
 spin_lock_init(&vkms_out->composer_lock);

 vkms_out->composer_workq = alloc_ordered_workqueue("vkms_composer", 0);
 if (!vkms_out->composer_workq)
  return -ENOMEM;

 return ret;
}
