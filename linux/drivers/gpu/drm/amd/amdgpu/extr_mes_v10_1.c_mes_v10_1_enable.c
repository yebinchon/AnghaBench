
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ uc_start_addr; } ;
struct amdgpu_device {TYPE_1__ mes; } ;


 int BYPASS_UNCACHED ;
 int CP_MES_CNTL ;
 int CP_MES_DC_OP_CNTL ;
 int GC ;
 int MES_HALT ;
 int MES_INVALIDATE_ICACHE ;
 int MES_PIPE0_ACTIVE ;
 int MES_PIPE0_RESET ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmCP_MES_CNTL ;
 int mmCP_MES_DC_OP_CNTL ;
 int mmCP_MES_PRGRM_CNTR_START ;

__attribute__((used)) static void mes_v10_1_enable(struct amdgpu_device *adev, bool enable)
{
 uint32_t data = 0;

 if (enable) {
  data = RREG32_SOC15(GC, 0, mmCP_MES_CNTL);
  data = REG_SET_FIELD(data, CP_MES_CNTL, MES_PIPE0_RESET, 1);
  WREG32_SOC15(GC, 0, mmCP_MES_CNTL, data);


  WREG32_SOC15(GC, 0, mmCP_MES_PRGRM_CNTR_START,
        (uint32_t)(adev->mes.uc_start_addr) >> 2);


  data = RREG32_SOC15(GC, 0, mmCP_MES_DC_OP_CNTL);
  data = REG_SET_FIELD(data, CP_MES_DC_OP_CNTL,
         BYPASS_UNCACHED, 0);
  WREG32_SOC15(GC, 0, mmCP_MES_DC_OP_CNTL, data);


  data = REG_SET_FIELD(0, CP_MES_CNTL, MES_PIPE0_ACTIVE, 1);
  WREG32_SOC15(GC, 0, mmCP_MES_CNTL, data);
 } else {
  data = RREG32_SOC15(GC, 0, mmCP_MES_CNTL);
  data = REG_SET_FIELD(data, CP_MES_CNTL, MES_PIPE0_ACTIVE, 0);
  data = REG_SET_FIELD(data, CP_MES_CNTL,
         MES_INVALIDATE_ICACHE, 1);
  data = REG_SET_FIELD(data, CP_MES_CNTL, MES_PIPE0_RESET, 1);
  data = REG_SET_FIELD(data, CP_MES_CNTL, MES_HALT, 1);
  WREG32_SOC15(GC, 0, mmCP_MES_CNTL, data);
 }
}
