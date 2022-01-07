
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_2__ {int SviLoadLineTrimVddC; scalar_t__ SviLoadLineOffsetVddC; int SviLoadLineVddC; int SviLoadLineEn; } ;
struct ci_smumgr {TYPE_1__ power_tune_table; struct ci_pt_defaults* power_tune_defaults; } ;
struct ci_pt_defaults {int svi_load_line_vddc; int svi_load_line_en; } ;



__attribute__((used)) static int ci_populate_svi_load_line(struct pp_hwmgr *hwmgr)
{
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
 const struct ci_pt_defaults *defaults = smu_data->power_tune_defaults;

 smu_data->power_tune_table.SviLoadLineEn = defaults->svi_load_line_en;
 smu_data->power_tune_table.SviLoadLineVddC = defaults->svi_load_line_vddc;
 smu_data->power_tune_table.SviLoadLineTrimVddC = 3;
 smu_data->power_tune_table.SviLoadLineOffsetVddC = 0;

 return 0;
}
