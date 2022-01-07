
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_drm_data {int plane_helper_funcs; int channel_formats_cnt; int channel_formats; int plane_funcs; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int DRM_ERROR (char*,int ) ;
 int drm_plane_helper_add (struct drm_plane*,int ) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int ,int ,int ,int *,int,int *) ;

__attribute__((used)) static int kirin_drm_plane_init(struct drm_device *dev, struct drm_plane *plane,
    enum drm_plane_type type,
    const struct kirin_drm_data *data)
{
 int ret = 0;

 ret = drm_universal_plane_init(dev, plane, 1, data->plane_funcs,
           data->channel_formats,
           data->channel_formats_cnt,
           ((void*)0), type, ((void*)0));
 if (ret) {
  DRM_ERROR("fail to init plane, ch=%d\n", 0);
  return ret;
 }

 drm_plane_helper_add(plane, data->plane_helper_funcs);

 return 0;
}
