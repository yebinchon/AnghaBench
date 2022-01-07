
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper_surface_size {int dummy; } ;
struct drm_fb_helper {int fb; } ;


 int armada_fbdev_create (struct drm_fb_helper*,struct drm_fb_helper_surface_size*) ;

__attribute__((used)) static int armada_fb_probe(struct drm_fb_helper *fbh,
 struct drm_fb_helper_surface_size *sizes)
{
 int ret = 0;

 if (!fbh->fb) {
  ret = armada_fbdev_create(fbh, sizes);
  if (ret == 0)
   ret = 1;
 }
 return ret;
}
