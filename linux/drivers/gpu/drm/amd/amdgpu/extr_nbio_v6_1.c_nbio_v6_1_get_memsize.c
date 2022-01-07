
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmRCC_PF_0_0_RCC_CONFIG_MEMSIZE ;

__attribute__((used)) static u32 nbio_v6_1_get_memsize(struct amdgpu_device *adev)
{
 return RREG32_SOC15(NBIO, 0, mmRCC_PF_0_0_RCC_CONFIG_MEMSIZE);
}
