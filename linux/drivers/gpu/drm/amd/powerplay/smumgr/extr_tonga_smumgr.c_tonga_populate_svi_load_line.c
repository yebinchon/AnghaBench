
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SviLoadLineTrimVddC; scalar_t__ SviLoadLineOffsetVddC; int SviLoadLineVddC; int SviLoadLineEn; } ;
struct tonga_smumgr {TYPE_1__ power_tune_table; struct tonga_pt_defaults* power_tune_defaults; } ;
struct tonga_pt_defaults {int svi_load_line_vddC; int svi_load_line_en; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;



__attribute__((used)) static int tonga_populate_svi_load_line(struct pp_hwmgr *hwmgr)
{
 struct tonga_smumgr *smu_data =
    (struct tonga_smumgr *)(hwmgr->smu_backend);
 const struct tonga_pt_defaults *defaults = smu_data->power_tune_defaults;

 smu_data->power_tune_table.SviLoadLineEn = defaults->svi_load_line_en;
 smu_data->power_tune_table.SviLoadLineVddC = defaults->svi_load_line_vddC;
 smu_data->power_tune_table.SviLoadLineTrimVddC = 3;
 smu_data->power_tune_table.SviLoadLineOffsetVddC = 0;

 return 0;
}
