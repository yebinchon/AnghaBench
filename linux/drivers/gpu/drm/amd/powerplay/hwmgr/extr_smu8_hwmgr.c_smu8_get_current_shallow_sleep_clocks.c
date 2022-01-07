
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu8_power_state {int level; TYPE_1__* levels; } ;
struct pp_hwmgr {int dummy; } ;
struct pp_hw_power_state {int dummy; } ;
struct pp_clock_info {int min_eng_clk; int max_eng_clk; } ;
struct TYPE_2__ {int engineClock; int ssDividerIndex; } ;


 struct smu8_power_state* cast_const_smu8_power_state (struct pp_hw_power_state const*) ;

__attribute__((used)) static int smu8_get_current_shallow_sleep_clocks(struct pp_hwmgr *hwmgr,
 const struct pp_hw_power_state *state, struct pp_clock_info *clock_info)
{
 const struct smu8_power_state *ps = cast_const_smu8_power_state(state);

 clock_info->min_eng_clk = ps->levels[0].engineClock / (1 << (ps->levels[0].ssDividerIndex));
 clock_info->max_eng_clk = ps->levels[ps->level - 1].engineClock / (1 << (ps->levels[ps->level - 1].ssDividerIndex));

 return 0;
}
