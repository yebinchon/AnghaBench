
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 int CMD_PROPAGATE_DELAY ;
 int CP_RB_WPTR_POLL_CNTL ;
 int GRBM_REG_SAVE_GFX_IDLE_THRESHOLD ;
 int IDLE_POLL_COUNT ;
 int MEM_SLEEP_DELAY ;
 int POWER_DOWN_DELAY ;
 int POWER_UP_DELAY ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 int RLC_AUTO_PG_CTRL ;
 int RLC_PG_DELAY ;
 int RLC_PG_DELAY_2 ;
 int SERDES_CMD_DELAY ;
 int WREG32 (int ,scalar_t__) ;
 int WREG32_FIELD (int ,int ,int) ;
 int mmRLC_PG_DELAY ;

__attribute__((used)) static void gfx_v8_0_init_power_gating(struct amdgpu_device *adev)
{
 uint32_t data;

 WREG32_FIELD(CP_RB_WPTR_POLL_CNTL, IDLE_POLL_COUNT, 0x60);

 data = REG_SET_FIELD(0, RLC_PG_DELAY, POWER_UP_DELAY, 0x10);
 data = REG_SET_FIELD(data, RLC_PG_DELAY, POWER_DOWN_DELAY, 0x10);
 data = REG_SET_FIELD(data, RLC_PG_DELAY, CMD_PROPAGATE_DELAY, 0x10);
 data = REG_SET_FIELD(data, RLC_PG_DELAY, MEM_SLEEP_DELAY, 0x10);
 WREG32(mmRLC_PG_DELAY, data);

 WREG32_FIELD(RLC_PG_DELAY_2, SERDES_CMD_DELAY, 0x3);
 WREG32_FIELD(RLC_AUTO_PG_CTRL, GRBM_REG_SAVE_GFX_IDLE_THRESHOLD, 0x55f0);

}
