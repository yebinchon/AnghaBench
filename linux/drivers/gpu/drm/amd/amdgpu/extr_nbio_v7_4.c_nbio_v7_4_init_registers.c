
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int CI_SLV_ORDERING_DIS ;
 int PCIE_CI_CNTL ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,scalar_t__) ;
 int smnPCIE_CI_CNTL ;

__attribute__((used)) static void nbio_v7_4_init_registers(struct amdgpu_device *adev)
{
 uint32_t def, data;

 def = data = RREG32_PCIE(smnPCIE_CI_CNTL);
 data = REG_SET_FIELD(data, PCIE_CI_CNTL, CI_SLV_ORDERING_DIS, 1);

 if (def != data)
  WREG32_PCIE(smnPCIE_CI_CNTL, data);
}
