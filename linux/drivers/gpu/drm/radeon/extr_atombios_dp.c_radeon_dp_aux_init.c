
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_8__ {int kdev; struct drm_device* dev; } ;
struct TYPE_7__ {int hpd; } ;
struct radeon_connector {TYPE_4__* ddc_bus; TYPE_3__ base; TYPE_2__ hpd; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_10__ {void* transfer; int dev; } ;
struct TYPE_6__ {int hpd; } ;
struct TYPE_9__ {int has_aux; TYPE_5__ aux; TYPE_1__ rec; } ;


 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int WARN (int,char*,int) ;
 int drm_dp_aux_register (TYPE_5__*) ;
 scalar_t__ radeon_auxch ;
 void* radeon_dp_aux_transfer_atom ;
 void* radeon_dp_aux_transfer_native ;

void radeon_dp_aux_init(struct radeon_connector *radeon_connector)
{
 struct drm_device *dev = radeon_connector->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 int ret;

 radeon_connector->ddc_bus->rec.hpd = radeon_connector->hpd.hpd;
 radeon_connector->ddc_bus->aux.dev = radeon_connector->base.kdev;
 if (ASIC_IS_DCE5(rdev)) {
  if (radeon_auxch)
   radeon_connector->ddc_bus->aux.transfer = radeon_dp_aux_transfer_native;
  else
   radeon_connector->ddc_bus->aux.transfer = radeon_dp_aux_transfer_atom;
 } else {
  radeon_connector->ddc_bus->aux.transfer = radeon_dp_aux_transfer_atom;
 }

 ret = drm_dp_aux_register(&radeon_connector->ddc_bus->aux);
 if (!ret)
  radeon_connector->ddc_bus->has_aux = 1;

 WARN(ret, "drm_dp_aux_register() failed with error %d\n", ret);
}
