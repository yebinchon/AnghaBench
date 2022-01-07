
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ucTachometerPulsesPerRevolution; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {int device; TYPE_2__ thermal_controller; } ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL2 ;
 int CG_TACH_CTRL ;
 int EDGE_PER_REV ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int TACH_PWM_RESP_RATE ;

__attribute__((used)) static int smu7_thermal_initialize(struct pp_hwmgr *hwmgr)
{
 if (hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution)
  PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
    CG_TACH_CTRL, EDGE_PER_REV,
    hwmgr->thermal_controller.fanInfo.
    ucTachometerPulsesPerRevolution - 1);

 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL2, TACH_PWM_RESP_RATE, 0x28);

 return 0;
}
