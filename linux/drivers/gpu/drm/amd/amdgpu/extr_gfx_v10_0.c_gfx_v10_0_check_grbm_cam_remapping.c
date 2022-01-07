
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,scalar_t__) ;
 int mmVGT_ESGS_RING_SIZE ;
 int mmVGT_ESGS_RING_SIZE_UMD ;

__attribute__((used)) static bool gfx_v10_0_check_grbm_cam_remapping(struct amdgpu_device *adev)
{
 uint32_t data, pattern = 0xDEADBEEF;



 data = RREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE);

 WREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE, 0);

 WREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE_UMD, pattern);

 if (RREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE) == pattern) {
  WREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE_UMD, data);
  return 1;
 } else {
  WREG32_SOC15(GC, 0, mmVGT_ESGS_RING_SIZE, data);
  return 0;
 }
}
