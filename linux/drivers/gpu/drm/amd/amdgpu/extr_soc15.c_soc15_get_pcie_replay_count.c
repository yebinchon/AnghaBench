
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ RREG32_PCIE (int ) ;
 int smnPCIE_RX_NUM_NAK ;
 int smnPCIE_RX_NUM_NAK_GENERATED ;

__attribute__((used)) static uint64_t soc15_get_pcie_replay_count(struct amdgpu_device *adev)
{
 uint64_t nak_r, nak_g;


 nak_r = RREG32_PCIE(smnPCIE_RX_NUM_NAK);
 nak_g = RREG32_PCIE(smnPCIE_RX_NUM_NAK_GENERATED);


 return (nak_r + nak_g);
}
