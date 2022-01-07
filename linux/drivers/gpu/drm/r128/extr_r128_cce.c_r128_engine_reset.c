
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dev_private; } ;


 int DEV_INIT_TEST_WITH_RETURN (int ) ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int r128_do_engine_reset (struct drm_device*) ;

int r128_engine_reset(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev->dev_private);

 return r128_do_engine_reset(dev);
}
