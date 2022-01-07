
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int const state; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xenbus_switch_state (struct xenbus_device*,int const) ;

__attribute__((used)) static void xenkbd_backend_changed(struct xenbus_device *dev,
       enum xenbus_state backend_state)
{
 switch (backend_state) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
  break;

 case 133:
  xenbus_switch_state(dev, 134);
  break;

 case 134:





  if (dev->state != 134)
   xenbus_switch_state(dev, 134);
  break;

 case 136:
  if (dev->state == 136)
   break;

 case 135:
  xenbus_frontend_closed(dev);
  break;
 }
}
