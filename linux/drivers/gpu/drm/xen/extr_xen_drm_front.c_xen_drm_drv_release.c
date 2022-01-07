
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ be_alloc; } ;
struct xen_drm_front_info {int xb_dev; TYPE_1__ cfg; } ;
struct xen_drm_front_drm_info {struct xen_drm_front_info* front_info; struct xen_drm_front_drm_info* dev_private; } ;
struct drm_device {struct xen_drm_front_info* front_info; struct drm_device* dev_private; } ;


 int XenbusStateInitialising ;
 int drm_atomic_helper_shutdown (struct xen_drm_front_drm_info*) ;
 int drm_dev_fini (struct xen_drm_front_drm_info*) ;
 int drm_mode_config_cleanup (struct xen_drm_front_drm_info*) ;
 int kfree (struct xen_drm_front_drm_info*) ;
 int xen_drm_front_kms_fini (struct xen_drm_front_drm_info*) ;
 int xenbus_switch_state (int ,int ) ;

__attribute__((used)) static void xen_drm_drv_release(struct drm_device *dev)
{
 struct xen_drm_front_drm_info *drm_info = dev->dev_private;
 struct xen_drm_front_info *front_info = drm_info->front_info;

 xen_drm_front_kms_fini(drm_info);

 drm_atomic_helper_shutdown(dev);
 drm_mode_config_cleanup(dev);

 drm_dev_fini(dev);
 kfree(dev);

 if (front_info->cfg.be_alloc)
  xenbus_switch_state(front_info->xb_dev,
        XenbusStateInitialising);

 kfree(drm_info);
}
