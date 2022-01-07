
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 int RLC_PG_CNTL ;
 scalar_t__ RREG32 (int ) ;
 int SMU_CLK_SLOWDOWN_ON_PD_ENABLE ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,scalar_t__) ;
 int mmRLC_PG_CNTL ;

__attribute__((used)) static void gfx_v9_0_enable_sck_slow_down_on_power_down(struct amdgpu_device *adev,
      bool enable)
{
 uint32_t data = 0;
 uint32_t default_data = 0;

 default_data = data = RREG32(SOC15_REG_OFFSET(GC, 0, mmRLC_PG_CNTL));
 data = REG_SET_FIELD(data, RLC_PG_CNTL,
        SMU_CLK_SLOWDOWN_ON_PD_ENABLE,
        enable ? 1 : 0);
 if(default_data != data)
  WREG32(SOC15_REG_OFFSET(GC, 0, mmRLC_PG_CNTL), data);
}
