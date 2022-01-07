
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int FEATURE_STATUS ;
 int PHM_READ_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int VOLTAGE_CONTROLLER_ON ;

__attribute__((used)) static bool tonga_is_dpm_running(struct pp_hwmgr *hwmgr)
{
 return (1 == PHM_READ_INDIRECT_FIELD(hwmgr->device,
   CGS_IND_REG__SMC, FEATURE_STATUS, VOLTAGE_CONTROLLER_ON))
   ? 1 : 0;
}
