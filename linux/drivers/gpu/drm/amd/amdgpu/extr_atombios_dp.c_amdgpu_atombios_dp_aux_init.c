
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kdev; } ;
struct TYPE_8__ {int hpd; } ;
struct amdgpu_connector {TYPE_4__* ddc_bus; TYPE_1__ base; TYPE_3__ hpd; } ;
struct TYPE_10__ {int transfer; int dev; } ;
struct TYPE_7__ {int hpd; } ;
struct TYPE_9__ {int has_aux; TYPE_5__ aux; TYPE_2__ rec; } ;


 int WARN (int,char*,int) ;
 int amdgpu_atombios_dp_aux_transfer ;
 int drm_dp_aux_register (TYPE_5__*) ;

void amdgpu_atombios_dp_aux_init(struct amdgpu_connector *amdgpu_connector)
{
 int ret;

 amdgpu_connector->ddc_bus->rec.hpd = amdgpu_connector->hpd.hpd;
 amdgpu_connector->ddc_bus->aux.dev = amdgpu_connector->base.kdev;
 amdgpu_connector->ddc_bus->aux.transfer = amdgpu_atombios_dp_aux_transfer;
 ret = drm_dp_aux_register(&amdgpu_connector->ddc_bus->aux);
 if (!ret)
  amdgpu_connector->ddc_bus->has_aux = 1;

 WARN(ret, "drm_dp_aux_register_i2c_bus() failed with error %d\n", ret);
}
