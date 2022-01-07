
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* writeback_out_fence_ptr_property; struct drm_property* writeback_pixel_formats_property; struct drm_property* writeback_fb_id_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_FB ;
 int DRM_MODE_PROP_ATOMIC ;
 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int ENOMEM ;
 int U64_MAX ;
 struct drm_property* drm_property_create (struct drm_device*,int,char*,int ) ;
 struct drm_property* drm_property_create_object (struct drm_device*,int,char*,int ) ;
 struct drm_property* drm_property_create_range (struct drm_device*,int,char*,int ,int ) ;

__attribute__((used)) static int create_writeback_properties(struct drm_device *dev)
{
 struct drm_property *prop;

 if (!dev->mode_config.writeback_fb_id_property) {
  prop = drm_property_create_object(dev, DRM_MODE_PROP_ATOMIC,
        "WRITEBACK_FB_ID",
        DRM_MODE_OBJECT_FB);
  if (!prop)
   return -ENOMEM;
  dev->mode_config.writeback_fb_id_property = prop;
 }

 if (!dev->mode_config.writeback_pixel_formats_property) {
  prop = drm_property_create(dev, DRM_MODE_PROP_BLOB |
        DRM_MODE_PROP_ATOMIC |
        DRM_MODE_PROP_IMMUTABLE,
        "WRITEBACK_PIXEL_FORMATS", 0);
  if (!prop)
   return -ENOMEM;
  dev->mode_config.writeback_pixel_formats_property = prop;
 }

 if (!dev->mode_config.writeback_out_fence_ptr_property) {
  prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
       "WRITEBACK_OUT_FENCE_PTR", 0,
       U64_MAX);
  if (!prop)
   return -ENOMEM;
  dev->mode_config.writeback_out_fence_ptr_property = prop;
 }

 return 0;
}
