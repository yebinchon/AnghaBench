
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_hwseq {TYPE_1__* ctx; } ;
struct TYPE_6__ {scalar_t__ disable_hubp_power_gate; } ;
struct TYPE_5__ {TYPE_3__ debug; } ;
struct TYPE_4__ {TYPE_2__* dc; } ;


 int BREAK_TO_DEBUGGER () ;
 int DOMAIN0_PGFSM_PWR_STATUS ;
 int DOMAIN0_PG_CONFIG ;
 int DOMAIN0_PG_STATUS ;
 int DOMAIN0_POWER_GATE ;
 int DOMAIN2_PGFSM_PWR_STATUS ;
 int DOMAIN2_PG_CONFIG ;
 int DOMAIN2_PG_STATUS ;
 int DOMAIN2_POWER_GATE ;
 int DOMAIN4_PGFSM_PWR_STATUS ;
 int DOMAIN4_PG_CONFIG ;
 int DOMAIN4_PG_STATUS ;
 int DOMAIN4_POWER_GATE ;
 int DOMAIN6_PGFSM_PWR_STATUS ;
 int DOMAIN6_PG_CONFIG ;
 int DOMAIN6_PG_STATUS ;
 int DOMAIN6_POWER_GATE ;
 int DOMAIN8_PGFSM_PWR_STATUS ;
 int DOMAIN8_PG_CONFIG ;
 int DOMAIN8_PG_STATUS ;
 int DOMAIN8_POWER_GATE ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;

__attribute__((used)) static void dcn20_hubp_pg_control(
  struct dce_hwseq *hws,
  unsigned int hubp_inst,
  bool power_on)
{
 uint32_t power_gate = power_on ? 0 : 1;
 uint32_t pwr_status = power_on ? 0 : 2;

 if (hws->ctx->dc->debug.disable_hubp_power_gate)
  return;
 if (REG(DOMAIN0_PG_CONFIG) == 0)
  return;

 switch (hubp_inst) {
 case 0:
  REG_UPDATE(DOMAIN0_PG_CONFIG,
    DOMAIN0_POWER_GATE, power_gate);

  REG_WAIT(DOMAIN0_PG_STATUS,
    DOMAIN0_PGFSM_PWR_STATUS, pwr_status,
    1, 1000);
  break;
 case 1:
  REG_UPDATE(DOMAIN2_PG_CONFIG,
    DOMAIN2_POWER_GATE, power_gate);

  REG_WAIT(DOMAIN2_PG_STATUS,
    DOMAIN2_PGFSM_PWR_STATUS, pwr_status,
    1, 1000);
  break;
 case 2:
  REG_UPDATE(DOMAIN4_PG_CONFIG,
    DOMAIN4_POWER_GATE, power_gate);

  REG_WAIT(DOMAIN4_PG_STATUS,
    DOMAIN4_PGFSM_PWR_STATUS, pwr_status,
    1, 1000);
  break;
 case 3:
  REG_UPDATE(DOMAIN6_PG_CONFIG,
    DOMAIN6_POWER_GATE, power_gate);

  REG_WAIT(DOMAIN6_PG_STATUS,
    DOMAIN6_PGFSM_PWR_STATUS, pwr_status,
    1, 1000);
  break;
 case 4:
  REG_UPDATE(DOMAIN8_PG_CONFIG,
    DOMAIN8_POWER_GATE, power_gate);

  REG_WAIT(DOMAIN8_PG_STATUS,
    DOMAIN8_PGFSM_PWR_STATUS, pwr_status,
    1, 1000);
  break;
 case 5:
  break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }
}
