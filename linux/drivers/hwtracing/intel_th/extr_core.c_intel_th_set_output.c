
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_driver {int (* set_output ) (struct intel_th_device*,unsigned int) ;} ;
struct TYPE_2__ {int driver; } ;
struct intel_th_device {scalar_t__ host_mode; TYPE_1__ dev; } ;


 int ENOTSUPP ;
 int stub1 (struct intel_th_device*,unsigned int) ;
 struct intel_th_driver* to_intel_th_driver (int ) ;
 struct intel_th_device* to_intel_th_hub (struct intel_th_device*) ;

int intel_th_set_output(struct intel_th_device *thdev,
   unsigned int master)
{
 struct intel_th_device *hub = to_intel_th_hub(thdev);
 struct intel_th_driver *hubdrv = to_intel_th_driver(hub->dev.driver);


 if (hub->host_mode)
  return 0;

 if (!hubdrv->set_output)
  return -ENOTSUPP;

 return hubdrv->set_output(hub, master);
}
