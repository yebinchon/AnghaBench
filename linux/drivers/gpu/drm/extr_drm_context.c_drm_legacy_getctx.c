
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_ctx {scalar_t__ flags; } ;


 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int EOPNOTSUPP ;
 int drm_core_check_feature (struct drm_device*,int ) ;

int drm_legacy_getctx(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_ctx *ctx = data;

 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return -EOPNOTSUPP;


 ctx->flags = 0;

 return 0;
}
