
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RLC_PG_CNTL ;
 int SMU_CLK_SLOWDOWN_ON_PU_ENABLE ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void cz_enable_sck_slow_down_on_power_up(struct amdgpu_device *adev,
      bool enable)
{
 WREG32_FIELD(RLC_PG_CNTL, SMU_CLK_SLOWDOWN_ON_PU_ENABLE, enable ? 1 : 0);
}
