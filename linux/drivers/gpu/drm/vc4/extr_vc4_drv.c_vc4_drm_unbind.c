
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int ctm_manager; int load_tracker; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_atomic_private_obj_fini (int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_drm_unbind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct vc4_dev *vc4 = to_vc4_dev(drm);

 drm_dev_unregister(drm);

 drm_atomic_helper_shutdown(drm);

 drm_mode_config_cleanup(drm);

 drm_atomic_private_obj_fini(&vc4->load_tracker);
 drm_atomic_private_obj_fini(&vc4->ctm_manager);

 drm_dev_put(drm);
}
