
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* entry; } ;
struct vega20_smumgr {TYPE_1__ smu_tables; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_4__ {scalar_t__ mc_addr; } ;


 int PPSMC_MSG_SetToolsDramAddrHigh ;
 int PPSMC_MSG_SetToolsDramAddrLow ;
 size_t TABLE_PMSTATUSLOG ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;
 int vega20_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega20_set_tools_address(struct pp_hwmgr *hwmgr)
{
 struct vega20_smumgr *priv =
   (struct vega20_smumgr *)(hwmgr->smu_backend);
 int ret = 0;

 if (priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr) {
  ret = vega20_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetToolsDramAddrHigh,
    upper_32_bits(priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr));
  if (!ret)
   ret = vega20_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetToolsDramAddrLow,
     lower_32_bits(priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr));
 }

 return ret;
}
