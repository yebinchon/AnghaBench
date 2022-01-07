
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int CI_SWUS_MAX_READ_REQUEST_SIZE_MODE ;
 int CI_SWUS_MAX_READ_REQUEST_SIZE_PRIV ;
 int PCIE_CONFIG_CNTL ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,scalar_t__) ;
 int smnPCIE_CONFIG_CNTL ;

__attribute__((used)) static void nbio_v2_3_init_registers(struct amdgpu_device *adev)
{
 uint32_t def, data;

 def = data = RREG32_PCIE(smnPCIE_CONFIG_CNTL);
 data = REG_SET_FIELD(data, PCIE_CONFIG_CNTL, CI_SWUS_MAX_READ_REQUEST_SIZE_MODE, 1);
 data = REG_SET_FIELD(data, PCIE_CONFIG_CNTL, CI_SWUS_MAX_READ_REQUEST_SIZE_PRIV, 1);

 if (def != data)
  WREG32_PCIE(smnPCIE_CONFIG_CNTL, data);
}
