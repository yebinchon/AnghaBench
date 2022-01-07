
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct radeon_connector {TYPE_3__* ddc_bus; TYPE_1__ base; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_5__ {int i2c_id; } ;
struct TYPE_6__ {TYPE_2__ rec; } ;


 int ATOM_DP_ACTION_GET_SINK_TYPE ;
 int radeon_dp_encoder_service (struct radeon_device*,int ,int ,int ,int ) ;

u8 radeon_dp_getsinktype(struct radeon_connector *radeon_connector)
{
 struct drm_device *dev = radeon_connector->base.dev;
 struct radeon_device *rdev = dev->dev_private;

 return radeon_dp_encoder_service(rdev, ATOM_DP_ACTION_GET_SINK_TYPE, 0,
      radeon_connector->ddc_bus->rec.i2c_id, 0);
}
