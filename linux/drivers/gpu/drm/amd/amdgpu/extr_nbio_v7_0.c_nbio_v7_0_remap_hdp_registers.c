
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reg_offset; } ;
struct amdgpu_device {TYPE_1__ rmmio_remap; } ;


 scalar_t__ KFD_MMIO_REMAP_HDP_MEM_FLUSH_CNTL ;
 scalar_t__ KFD_MMIO_REMAP_HDP_REG_FLUSH_CNTL ;
 int NBIO ;
 int WREG32_SOC15 (int ,int ,int ,scalar_t__) ;
 int mmREMAP_HDP_MEM_FLUSH_CNTL ;
 int mmREMAP_HDP_REG_FLUSH_CNTL ;

__attribute__((used)) static void nbio_v7_0_remap_hdp_registers(struct amdgpu_device *adev)
{
 WREG32_SOC15(NBIO, 0, mmREMAP_HDP_MEM_FLUSH_CNTL,
  adev->rmmio_remap.reg_offset + KFD_MMIO_REMAP_HDP_MEM_FLUSH_CNTL);
 WREG32_SOC15(NBIO, 0, mmREMAP_HDP_REG_FLUSH_CNTL,
  adev->rmmio_remap.reg_offset + KFD_MMIO_REMAP_HDP_REG_FLUSH_CNTL);
}
