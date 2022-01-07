
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* entry; } ;
struct vega10_smumgr {TYPE_1__ smu_tables; } ;
struct pp_hwmgr {struct vega10_smumgr* smu_backend; } ;
struct TYPE_4__ {scalar_t__ mc_addr; } ;


 int PPSMC_MSG_SetToolsDramAddrHigh ;
 int PPSMC_MSG_SetToolsDramAddrLow ;
 size_t TOOLSTABLE ;
 int lower_32_bits (scalar_t__) ;
 int smu9_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int vega10_set_tools_address(struct pp_hwmgr *hwmgr)
{
 struct vega10_smumgr *priv = hwmgr->smu_backend;

 if (priv->smu_tables.entry[TOOLSTABLE].mc_addr) {
  smu9_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetToolsDramAddrHigh,
    upper_32_bits(priv->smu_tables.entry[TOOLSTABLE].mc_addr));
  smu9_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetToolsDramAddrLow,
    lower_32_bits(priv->smu_tables.entry[TOOLSTABLE].mc_addr));
 }
 return 0;
}
