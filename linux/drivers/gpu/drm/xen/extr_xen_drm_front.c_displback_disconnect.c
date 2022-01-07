
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_drm_front_info {int xb_dev; int drm_info; } ;


 int XenbusStateReconfiguring ;
 int xen_drm_drv_fini (struct xen_drm_front_info*) ;
 int xenbus_switch_state (int ,int ) ;

__attribute__((used)) static void displback_disconnect(struct xen_drm_front_info *front_info)
{
 if (!front_info->drm_info)
  return;


 xenbus_switch_state(front_info->xb_dev, XenbusStateReconfiguring);

 xen_drm_drv_fini(front_info);
}
