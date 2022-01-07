
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_2__ {scalar_t__* GnbLPML; } ;
struct iceland_smumgr {TYPE_1__ power_tune_table; } ;



__attribute__((used)) static int iceland_populate_gnb_lpml(struct pp_hwmgr *hwmgr)
{
 int i;
 struct iceland_smumgr *smu_data = (struct iceland_smumgr *)(hwmgr->smu_backend);


 for (i = 0; i < 8; i++)
  smu_data->power_tune_table.GnbLPML[i] = 0;

 return 0;
}
