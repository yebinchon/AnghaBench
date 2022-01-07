
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int state; int dev; } ;
struct xen_drm_front_info {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int DRM_DEBUG (char*,int ,int ) ;
 struct xen_drm_front_info* dev_get_drvdata (int *) ;
 int displback_connect (struct xen_drm_front_info*) ;
 int displback_disconnect (struct xen_drm_front_info*) ;
 int displback_initwait (struct xen_drm_front_info*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_strstate (int) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void displback_changed(struct xenbus_device *xb_dev,
         enum xenbus_state backend_state)
{
 struct xen_drm_front_info *front_info = dev_get_drvdata(&xb_dev->dev);
 int ret;

 DRM_DEBUG("Backend state is %s, front is %s\n",
    xenbus_strstate(backend_state),
    xenbus_strstate(xb_dev->state));

 switch (backend_state) {
 case 129:

 case 130:

 case 132:
  break;

 case 131:
  if (xb_dev->state == 129)
   break;


  displback_disconnect(front_info);
  break;

 case 133:
  if (xb_dev->state == 129)
   break;


  displback_disconnect(front_info);
  if (xb_dev->state != 131)
   break;

  ret = displback_initwait(front_info);
  if (ret < 0)
   xenbus_dev_fatal(xb_dev, ret, "initializing frontend");
  else
   xenbus_switch_state(xb_dev, 132);
  break;

 case 134:
  if (xb_dev->state != 132)
   break;

  ret = displback_connect(front_info);
  if (ret < 0) {
   displback_disconnect(front_info);
   xenbus_dev_fatal(xb_dev, ret, "connecting backend");
  } else {
   xenbus_switch_state(xb_dev, 134);
  }
  break;

 case 135:





  break;

 case 128:

 case 136:
  if (xb_dev->state == 136)
   break;

  displback_disconnect(front_info);
  break;
 }
}
