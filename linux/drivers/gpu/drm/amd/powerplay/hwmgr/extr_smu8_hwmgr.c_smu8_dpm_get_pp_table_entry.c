
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dclk; int vclk; } ;
struct smu8_power_state {TYPE_1__ uvd_clocks; } ;
struct TYPE_5__ {int DCLK; int VCLK; } ;
struct TYPE_6__ {int magic; } ;
struct pp_power_state {TYPE_2__ uvd_clocks; TYPE_3__ hardware; } ;
struct pp_hwmgr {int dummy; } ;


 struct smu8_power_state* cast_smu8_power_state (TYPE_3__*) ;
 int pp_tables_get_entry (struct pp_hwmgr*,unsigned long,struct pp_power_state*,int ) ;
 int smu8_dpm_get_pp_table_entry_callback ;
 int smu8_magic ;

__attribute__((used)) static int smu8_dpm_get_pp_table_entry(struct pp_hwmgr *hwmgr,
      unsigned long entry, struct pp_power_state *ps)
{
 int result;
 struct smu8_power_state *smu8_ps;

 ps->hardware.magic = smu8_magic;

 smu8_ps = cast_smu8_power_state(&(ps->hardware));

 result = pp_tables_get_entry(hwmgr, entry, ps,
   smu8_dpm_get_pp_table_entry_callback);

 smu8_ps->uvd_clocks.vclk = ps->uvd_clocks.VCLK;
 smu8_ps->uvd_clocks.dclk = ps->uvd_clocks.DCLK;

 return result;
}
