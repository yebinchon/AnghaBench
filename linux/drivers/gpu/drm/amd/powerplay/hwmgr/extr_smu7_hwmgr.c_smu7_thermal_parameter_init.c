
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_12__ {int platformCaps; } ;
struct TYPE_10__ {TYPE_3__* cac_dtp_table; } ;
struct TYPE_7__ {int usFanPWMStep; int usFanRPMMaxLimit; int usFanRPMStep; int usDefaultMaxFanRPM; int usMaxFanRPM; scalar_t__ usDefaultMaxFanPWM; scalar_t__ usMaxFanPWM; scalar_t__ ucMinimumPWMLimit; void* usFanRPMMinLimit; void* usFanPWMMaxLimit; void* usFanPWMMinLimit; scalar_t__ ucFanControlMode; } ;
struct TYPE_8__ {TYPE_1__ advanceFanControlParameters; } ;
struct pp_hwmgr {int feature_mask; TYPE_6__ platform_descriptor; TYPE_4__ dyn_state; TYPE_2__ thermal_controller; int device; scalar_t__ pptable; } ;
struct pp_atomctrl_gpio_pin_assignment {int uc_gpio_pin_bit_shift; } ;
struct phm_ppt_v1_information {TYPE_5__* cac_dtp_table; } ;
struct TYPE_11__ {int usDefaultTargetOperatingTemp; int usOperatingTempMaxLimit; int usOperatingTempStep; int usOperatingTempHyst; int usTargetOperatingTemp; int usOperatingTempMinLimit; } ;
struct TYPE_9__ {int usOperatingTempMaxLimit; int usDefaultTargetOperatingTemp; int usOperatingTempStep; int usTargetOperatingTemp; int usOperatingTempMinLimit; } ;


 int CGS_IND_REG__SMC ;
 int CNB_PWRMGT_CNTL ;
 int DPM_ENABLED ;
 int FORCE_NB_PS1 ;
 int GNB_SLOW ;
 int GNB_SLOW_MODE ;
 int PHM_PlatformCaps_ODFuzzyFanControlSupport ;
 int PHM_SET_FIELD (int ,int ,int ,int) ;
 int PP_OD_FUZZY_FAN_CONTROL_MASK ;
 int VDDC_PCC_GPIO_PINID ;
 scalar_t__ atomctrl_get_pp_assign_pin (struct pp_hwmgr*,int ,struct pp_atomctrl_gpio_pin_assignment*) ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ixCNB_PWRMGT_CNTL ;
 int phm_cap_set (int ,int ) ;

__attribute__((used)) static int smu7_thermal_parameter_init(struct pp_hwmgr *hwmgr)
{
 struct pp_atomctrl_gpio_pin_assignment gpio_pin_assignment;
 uint32_t temp_reg;
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);


 if (atomctrl_get_pp_assign_pin(hwmgr, VDDC_PCC_GPIO_PINID, &gpio_pin_assignment)) {
  temp_reg = cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixCNB_PWRMGT_CNTL);
  switch (gpio_pin_assignment.uc_gpio_pin_bit_shift) {
  case 0:
   temp_reg = PHM_SET_FIELD(temp_reg, CNB_PWRMGT_CNTL, GNB_SLOW_MODE, 0x1);
   break;
  case 1:
   temp_reg = PHM_SET_FIELD(temp_reg, CNB_PWRMGT_CNTL, GNB_SLOW_MODE, 0x2);
   break;
  case 2:
   temp_reg = PHM_SET_FIELD(temp_reg, CNB_PWRMGT_CNTL, GNB_SLOW, 0x1);
   break;
  case 3:
   temp_reg = PHM_SET_FIELD(temp_reg, CNB_PWRMGT_CNTL, FORCE_NB_PS1, 0x1);
   break;
  case 4:
   temp_reg = PHM_SET_FIELD(temp_reg, CNB_PWRMGT_CNTL, DPM_ENABLED, 0x1);
   break;
  default:
   break;
  }
  cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixCNB_PWRMGT_CNTL, temp_reg);
 }

 if (table_info == ((void*)0))
  return 0;

 if (table_info->cac_dtp_table->usDefaultTargetOperatingTemp != 0 &&
  hwmgr->thermal_controller.advanceFanControlParameters.ucFanControlMode) {
  hwmgr->thermal_controller.advanceFanControlParameters.usFanPWMMinLimit =
   (uint16_t)hwmgr->thermal_controller.advanceFanControlParameters.ucMinimumPWMLimit;

  hwmgr->thermal_controller.advanceFanControlParameters.usFanPWMMaxLimit =
   (uint16_t)hwmgr->thermal_controller.advanceFanControlParameters.usDefaultMaxFanPWM;

  hwmgr->thermal_controller.advanceFanControlParameters.usFanPWMStep = 1;

  hwmgr->thermal_controller.advanceFanControlParameters.usFanRPMMaxLimit = 100;

  hwmgr->thermal_controller.advanceFanControlParameters.usFanRPMMinLimit =
   (uint16_t)hwmgr->thermal_controller.advanceFanControlParameters.ucMinimumPWMLimit;

  hwmgr->thermal_controller.advanceFanControlParameters.usFanRPMStep = 1;

  table_info->cac_dtp_table->usDefaultTargetOperatingTemp = (table_info->cac_dtp_table->usDefaultTargetOperatingTemp >= 50) ?
        (table_info->cac_dtp_table->usDefaultTargetOperatingTemp - 50) : 0;

  table_info->cac_dtp_table->usOperatingTempMaxLimit = table_info->cac_dtp_table->usDefaultTargetOperatingTemp;
  table_info->cac_dtp_table->usOperatingTempStep = 1;
  table_info->cac_dtp_table->usOperatingTempHyst = 1;

  hwmgr->thermal_controller.advanceFanControlParameters.usMaxFanPWM =
          hwmgr->thermal_controller.advanceFanControlParameters.usDefaultMaxFanPWM;

  hwmgr->thermal_controller.advanceFanControlParameters.usMaxFanRPM =
          hwmgr->thermal_controller.advanceFanControlParameters.usDefaultMaxFanRPM;

  hwmgr->dyn_state.cac_dtp_table->usOperatingTempMinLimit =
          table_info->cac_dtp_table->usOperatingTempMinLimit;

  hwmgr->dyn_state.cac_dtp_table->usOperatingTempMaxLimit =
          table_info->cac_dtp_table->usOperatingTempMaxLimit;

  hwmgr->dyn_state.cac_dtp_table->usDefaultTargetOperatingTemp =
          table_info->cac_dtp_table->usDefaultTargetOperatingTemp;

  hwmgr->dyn_state.cac_dtp_table->usOperatingTempStep =
          table_info->cac_dtp_table->usOperatingTempStep;

  hwmgr->dyn_state.cac_dtp_table->usTargetOperatingTemp =
          table_info->cac_dtp_table->usTargetOperatingTemp;
  if (hwmgr->feature_mask & PP_OD_FUZZY_FAN_CONTROL_MASK)
   phm_cap_set(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_ODFuzzyFanControlSupport);
 }

 return 0;
}
