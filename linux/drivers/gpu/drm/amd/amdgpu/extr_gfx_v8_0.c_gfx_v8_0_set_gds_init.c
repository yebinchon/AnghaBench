
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gws_size; int oa_size; void* gds_compute_max_wave_id; void* gds_size; } ;
struct amdgpu_device {TYPE_1__ gds; } ;


 void* RREG32 (int ) ;
 int mmGDS_COMPUTE_MAX_WAVE_ID ;
 int mmGDS_VMID0_SIZE ;

__attribute__((used)) static void gfx_v8_0_set_gds_init(struct amdgpu_device *adev)
{

 adev->gds.gds_size = RREG32(mmGDS_VMID0_SIZE);
 adev->gds.gws_size = 64;
 adev->gds.oa_size = 16;
 adev->gds.gds_compute_max_wave_id = RREG32(mmGDS_COMPUTE_MAX_WAVE_ID);
}
