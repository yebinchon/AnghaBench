
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct amdgpu_connector {TYPE_3__* ddc_bus; TYPE_1__ base; } ;
struct TYPE_5__ {int i2c_id; } ;
struct TYPE_6__ {TYPE_2__ rec; } ;


 int ATOM_DP_ACTION_GET_SINK_TYPE ;
 int amdgpu_atombios_dp_encoder_service (struct amdgpu_device*,int ,int ,int ,int ) ;

u8 amdgpu_atombios_dp_get_sinktype(struct amdgpu_connector *amdgpu_connector)
{
 struct drm_device *dev = amdgpu_connector->base.dev;
 struct amdgpu_device *adev = dev->dev_private;

 return amdgpu_atombios_dp_encoder_service(adev, ATOM_DP_ACTION_GET_SINK_TYPE, 0,
        amdgpu_connector->ddc_bus->rec.i2c_id, 0);
}
