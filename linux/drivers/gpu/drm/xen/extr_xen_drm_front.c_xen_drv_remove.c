
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct xen_drm_front_info {TYPE_1__* xb_dev; } ;
struct TYPE_2__ {int otherend; } ;


 int DRM_ERROR (char*,int ) ;
 int XenbusStateClosing ;
 unsigned int XenbusStateInitWait ;
 int XenbusStateUnknown ;
 struct xen_drm_front_info* dev_get_drvdata (int *) ;
 int msleep (int) ;
 int xen_drm_drv_fini (struct xen_drm_front_info*) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 unsigned int xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_strstate (unsigned int) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

__attribute__((used)) static int xen_drv_remove(struct xenbus_device *dev)
{
 struct xen_drm_front_info *front_info = dev_get_drvdata(&dev->dev);
 int to = 100;

 xenbus_switch_state(dev, XenbusStateClosing);
 while ((xenbus_read_unsigned(front_info->xb_dev->otherend, "state",
         XenbusStateUnknown) != XenbusStateInitWait) &&
         --to)
  msleep(10);

 if (!to) {
  unsigned int state;

  state = xenbus_read_unsigned(front_info->xb_dev->otherend,
          "state", XenbusStateUnknown);
  DRM_ERROR("Backend state is %s while removing driver\n",
     xenbus_strstate(state));
 }

 xen_drm_drv_fini(front_info);
 xenbus_frontend_closed(dev);
 return 0;
}
