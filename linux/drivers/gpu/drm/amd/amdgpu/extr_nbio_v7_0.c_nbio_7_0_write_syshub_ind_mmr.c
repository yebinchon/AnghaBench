
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmSYSHUB_DATA ;
 int mmSYSHUB_INDEX ;

__attribute__((used)) static void nbio_7_0_write_syshub_ind_mmr(struct amdgpu_device *adev, uint32_t offset,
           uint32_t data)
{
 WREG32_SOC15(NBIO, 0, mmSYSHUB_INDEX, offset);
 WREG32_SOC15(NBIO, 0, mmSYSHUB_DATA, data);
}
