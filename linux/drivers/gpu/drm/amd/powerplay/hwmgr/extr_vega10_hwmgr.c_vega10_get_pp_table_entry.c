
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dclk; int vclk; } ;
struct vega10_power_state {int dc_compatible; TYPE_2__ uvd_clks; } ;
struct TYPE_7__ {int DCLK; int VCLK; } ;
struct TYPE_5__ {int disallowOnDC; } ;
struct TYPE_8__ {int magic; } ;
struct pp_power_state {TYPE_3__ uvd_clocks; TYPE_1__ validation; TYPE_4__ hardware; } ;
struct pp_hwmgr {int dummy; } ;


 int PhwVega10_Magic ;
 struct vega10_power_state* cast_phw_vega10_power_state (TYPE_4__*) ;
 int vega10_get_powerplay_table_entry (struct pp_hwmgr*,unsigned long,struct pp_power_state*,int ) ;
 int vega10_get_pp_table_entry_callback_func ;

__attribute__((used)) static int vega10_get_pp_table_entry(struct pp_hwmgr *hwmgr,
  unsigned long entry_index, struct pp_power_state *state)
{
 int result;
 struct vega10_power_state *ps;

 state->hardware.magic = PhwVega10_Magic;

 ps = cast_phw_vega10_power_state(&state->hardware);

 result = vega10_get_powerplay_table_entry(hwmgr, entry_index, state,
   vega10_get_pp_table_entry_callback_func);






 if (!state->validation.disallowOnDC)
  ps->dc_compatible = 1;

 ps->uvd_clks.vclk = state->uvd_clocks.VCLK;
 ps->uvd_clks.dclk = state->uvd_clocks.DCLK;

 return 0;
}
