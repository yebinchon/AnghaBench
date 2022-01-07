
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* GnbLPML; } ;
struct tonga_smumgr {TYPE_1__ power_tune_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;



__attribute__((used)) static int tonga_populate_gnb_lpml(struct pp_hwmgr *hwmgr)
{
 int i;
 struct tonga_smumgr *smu_data =
    (struct tonga_smumgr *)(hwmgr->smu_backend);


 for (i = 0; i < 16; i++)
  smu_data->power_tune_table.GnbLPML[i] = 0;

 return 0;
}
