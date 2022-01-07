
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int be_alloc; } ;
struct xen_drm_front_info {int xb_dev; TYPE_1__ cfg; int dbuf_list; struct xen_drm_front_drm_info* drm_info; } ;
struct xen_drm_front_drm_info {struct drm_device* drm_dev; } ;
struct drm_device {int dummy; } ;


 int XenbusStateInitialising ;
 int dbuf_free_all (int *) ;
 scalar_t__ drm_dev_is_unplugged (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unplug (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int xen_drm_front_evtchnl_free_all (struct xen_drm_front_info*) ;
 int xenbus_switch_state (int ,int ) ;

__attribute__((used)) static void xen_drm_drv_fini(struct xen_drm_front_info *front_info)
{
 struct xen_drm_front_drm_info *drm_info = front_info->drm_info;
 struct drm_device *dev;

 if (!drm_info)
  return;

 dev = drm_info->drm_dev;
 if (!dev)
  return;


 if (drm_dev_is_unplugged(dev))
  return;

 drm_kms_helper_poll_fini(dev);
 drm_dev_unplug(dev);
 drm_dev_put(dev);

 front_info->drm_info = ((void*)0);

 xen_drm_front_evtchnl_free_all(front_info);
 dbuf_free_all(&front_info->dbuf_list);






 if (!front_info->cfg.be_alloc)
  xenbus_switch_state(front_info->xb_dev,
        XenbusStateInitialising);
}
