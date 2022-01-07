
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dclk; int vclk; } ;
struct smu10_power_state {TYPE_1__ uvd_clocks; } ;
struct TYPE_5__ {int DCLK; int VCLK; } ;
struct TYPE_6__ {int magic; } ;
struct pp_power_state {TYPE_2__ uvd_clocks; TYPE_3__ hardware; } ;
struct pp_hwmgr {int dummy; } ;


 int SMU10_Magic ;
 struct smu10_power_state* cast_smu10_ps (TYPE_3__*) ;
 int pp_tables_get_entry (struct pp_hwmgr*,unsigned long,struct pp_power_state*,int ) ;
 int smu10_dpm_get_pp_table_entry_callback ;

__attribute__((used)) static int smu10_dpm_get_pp_table_entry(struct pp_hwmgr *hwmgr,
      unsigned long entry, struct pp_power_state *ps)
{
 int result;
 struct smu10_power_state *smu10_ps;

 ps->hardware.magic = SMU10_Magic;

 smu10_ps = cast_smu10_ps(&(ps->hardware));

 result = pp_tables_get_entry(hwmgr, entry, ps,
   smu10_dpm_get_pp_table_entry_callback);

 smu10_ps->uvd_clocks.vclk = ps->uvd_clocks.VCLK;
 smu10_ps->uvd_clocks.dclk = ps->uvd_clocks.DCLK;

 return result;
}
