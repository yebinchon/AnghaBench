
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int last_context; } ;
struct drm_ctx {int handle; } ;


 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int DRM_DEBUG (char*,int ) ;
 int EOPNOTSUPP ;
 int drm_context_switch (struct drm_device*,int ,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;

int drm_legacy_switchctx(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_ctx *ctx = data;

 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return -EOPNOTSUPP;

 DRM_DEBUG("%d\n", ctx->handle);
 return drm_context_switch(dev, dev->last_context, ctx->handle);
}
