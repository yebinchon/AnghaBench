
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int backbias_response_time; int voltage_response_time; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int R600_VRU_DFLT ;
 int r600_vid_rt_set_vrt (struct radeon_device*,int) ;
 int r600_vid_rt_set_vru (struct radeon_device*,int ) ;
 int rv6xx_compute_count_for_delay (struct radeon_device*,int ,int ) ;
 int rv6xx_vid_response_set_brt (struct radeon_device*,int) ;

__attribute__((used)) static void rv6xx_program_voltage_timing_parameters(struct radeon_device *rdev)
{
 u32 rt;

 r600_vid_rt_set_vru(rdev, R600_VRU_DFLT);

 r600_vid_rt_set_vrt(rdev,
       rv6xx_compute_count_for_delay(rdev,
         rdev->pm.dpm.voltage_response_time,
         R600_VRU_DFLT));

 rt = rv6xx_compute_count_for_delay(rdev,
        rdev->pm.dpm.backbias_response_time,
        R600_VRU_DFLT);

 rv6xx_vid_response_set_brt(rdev, (rt + 0x1F) >> 5);
}
