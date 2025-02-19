
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu8_init_acp_limit (struct pp_hwmgr*) ;
 int smu8_init_power_gate_state (struct pp_hwmgr*) ;
 int smu8_init_sclk_limit (struct pp_hwmgr*) ;
 int smu8_init_sclk_threshold (struct pp_hwmgr*) ;
 int smu8_init_uvd_limit (struct pp_hwmgr*) ;
 int smu8_init_vce_limit (struct pp_hwmgr*) ;
 int smu8_upload_pptable_to_smu (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_setup_asic_task(struct pp_hwmgr *hwmgr)
{
 int ret;

 ret = smu8_upload_pptable_to_smu(hwmgr);
 if (ret)
  return ret;
 ret = smu8_init_sclk_limit(hwmgr);
 if (ret)
  return ret;
 ret = smu8_init_uvd_limit(hwmgr);
 if (ret)
  return ret;
 ret = smu8_init_vce_limit(hwmgr);
 if (ret)
  return ret;
 ret = smu8_init_acp_limit(hwmgr);
 if (ret)
  return ret;

 smu8_init_power_gate_state(hwmgr);
 smu8_init_sclk_threshold(hwmgr);

 return 0;
}
