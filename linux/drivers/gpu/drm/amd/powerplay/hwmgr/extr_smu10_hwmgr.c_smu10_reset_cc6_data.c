
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu10_hwmgr {int cc6_disable; int pstate_disable; int cc6_setting_changed; scalar_t__ separation_time; } ;
struct pp_hwmgr {scalar_t__ backend; } ;



__attribute__((used)) static int smu10_reset_cc6_data(struct pp_hwmgr *hwmgr)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 smu10_data->separation_time = 0;
 smu10_data->cc6_disable = 0;
 smu10_data->pstate_disable = 0;
 smu10_data->cc6_setting_changed = 0;

 return 0;
}
