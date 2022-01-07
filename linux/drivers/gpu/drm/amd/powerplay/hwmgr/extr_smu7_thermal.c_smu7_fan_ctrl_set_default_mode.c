
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int fan_ctrl_is_in_default_mode; int tmin; int device; int fan_ctrl_default_mode; } ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL2 ;
 int FDO_PWM_MODE ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int TMIN ;

int smu7_fan_ctrl_set_default_mode(struct pp_hwmgr *hwmgr)
{
 if (!hwmgr->fan_ctrl_is_in_default_mode) {
  PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
    CG_FDO_CTRL2, FDO_PWM_MODE, hwmgr->fan_ctrl_default_mode);
  PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
    CG_FDO_CTRL2, TMIN, hwmgr->tmin);
  hwmgr->fan_ctrl_is_in_default_mode = 1;
 }

 return 0;
}
