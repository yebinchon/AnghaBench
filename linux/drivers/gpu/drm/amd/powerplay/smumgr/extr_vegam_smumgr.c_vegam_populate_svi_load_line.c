
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SviLoadLineTrimVddC; scalar_t__ SviLoadLineOffsetVddC; int SviLoadLineVddC; int SviLoadLineEn; } ;
struct vegam_smumgr {TYPE_1__ power_tune_table; struct vegam_pt_defaults* power_tune_defaults; } ;
struct vegam_pt_defaults {int SviLoadLineVddC; int SviLoadLineEn; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;



__attribute__((used)) static int vegam_populate_svi_load_line(struct pp_hwmgr *hwmgr)
{
 struct vegam_smumgr *smu_data = (struct vegam_smumgr *)(hwmgr->smu_backend);
 const struct vegam_pt_defaults *defaults = smu_data->power_tune_defaults;

 smu_data->power_tune_table.SviLoadLineEn = defaults->SviLoadLineEn;
 smu_data->power_tune_table.SviLoadLineVddC = defaults->SviLoadLineVddC;
 smu_data->power_tune_table.SviLoadLineTrimVddC = 3;
 smu_data->power_tune_table.SviLoadLineOffsetVddC = 0;

 return 0;
}
