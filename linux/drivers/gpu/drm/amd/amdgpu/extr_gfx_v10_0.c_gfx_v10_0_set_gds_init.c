
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gds_size; int gds_compute_max_wave_id; int gws_size; int oa_size; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gds; } ;




__attribute__((used)) static void gfx_v10_0_set_gds_init(struct amdgpu_device *adev)
{

 switch (adev->asic_type) {
 case 128:
 default:
  adev->gds.gds_size = 0x10000;
  adev->gds.gds_compute_max_wave_id = 0x4ff;
  break;
 }

 adev->gds.gws_size = 64;
 adev->gds.oa_size = 16;
}
