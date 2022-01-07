
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int fan_ctrl_is_in_default_mode; int device; void* tmin; void* fan_ctrl_default_mode; } ;


 int CGS_IND_REG__SMC ;
 int CG_FDO_CTRL2 ;
 int FDO_PWM_MODE ;
 void* PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int TMIN ;

int smu7_fan_ctrl_set_static_mode(struct pp_hwmgr *hwmgr, uint32_t mode)
{
 if (hwmgr->fan_ctrl_is_in_default_mode) {
  hwmgr->fan_ctrl_default_mode =
    PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
      CG_FDO_CTRL2, FDO_PWM_MODE);
  hwmgr->tmin =
    PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
      CG_FDO_CTRL2, TMIN);
  hwmgr->fan_ctrl_is_in_default_mode = 0;
 }

 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL2, TMIN, 0);
 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_FDO_CTRL2, FDO_PWM_MODE, mode);

 return 0;
}
