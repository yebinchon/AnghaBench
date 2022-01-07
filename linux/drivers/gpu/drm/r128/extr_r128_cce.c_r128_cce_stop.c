
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_r128_private_t ;
struct TYPE_2__ {scalar_t__ idle; scalar_t__ flush; } ;
typedef TYPE_1__ drm_r128_cce_stop_t ;


 int DEV_INIT_TEST_WITH_RETURN (int *) ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int r128_do_cce_flush (int *) ;
 int r128_do_cce_idle (int *) ;
 int r128_do_cce_stop (int *) ;
 int r128_do_engine_reset (struct drm_device*) ;

int r128_cce_stop(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_cce_stop_t *stop = data;
 int ret;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);




 if (stop->flush)
  r128_do_cce_flush(dev_priv);




 if (stop->idle) {
  ret = r128_do_cce_idle(dev_priv);
  if (ret)
   return ret;
 }





 r128_do_cce_stop(dev_priv);


 r128_do_engine_reset(dev);

 return 0;
}
