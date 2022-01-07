
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmSYSHUB_DATA ;
 int mmSYSHUB_INDEX ;

__attribute__((used)) static uint32_t nbio_7_0_read_syshub_ind_mmr(struct amdgpu_device *adev, uint32_t offset)
{
 uint32_t data;

 WREG32_SOC15(NBIO, 0, mmSYSHUB_INDEX, offset);
 data = RREG32_SOC15(NBIO, 0, mmSYSHUB_DATA);

 return data;
}
