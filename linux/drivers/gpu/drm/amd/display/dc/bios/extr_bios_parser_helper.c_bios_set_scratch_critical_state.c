
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_bios {int dummy; } ;


 int BIOS_SCRATCH_6 ;
 int REG_UPDATE (int ,int ,int) ;
 int S6_CRITICAL_STATE ;

void bios_set_scratch_critical_state(
 struct dc_bios *bios,
 bool state)
{
 uint32_t critial_state = state ? 1 : 0;
 REG_UPDATE(BIOS_SCRATCH_6, S6_CRITICAL_STATE, critial_state);
}
