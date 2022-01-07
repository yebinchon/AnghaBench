
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK ;
 int RREG32_PCIE (int) ;
 int smnMP1_FIRMWARE_FLAGS ;

__attribute__((used)) static bool psp_v3_1_smu_reload_quirk(struct psp_context *psp)
{
 struct amdgpu_device *adev = psp->adev;
 uint32_t reg;

 reg = RREG32_PCIE(smnMP1_FIRMWARE_FLAGS | 0x03b00000);
 return (reg & MP1_FIRMWARE_FLAGS__INTERRUPTS_ENABLED_MASK) ? 1 : 0;
}
