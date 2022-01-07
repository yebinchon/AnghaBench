
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; int * channel_idx_tbl; int channel_offs; int umc_inst_num; int channel_inst_num; int max_ras_err_cnt_per_query; } ;
struct amdgpu_device {int asic_type; TYPE_1__ umc; } ;



 int UMC_V6_1_CHANNEL_INSTANCE_NUM ;
 int UMC_V6_1_PER_CHANNEL_OFFSET ;
 int UMC_V6_1_TOTAL_CHANNEL_NUM ;
 int UMC_V6_1_UMC_INSTANCE_NUM ;
 int ** umc_v6_1_channel_idx_tbl ;
 int umc_v6_1_funcs ;

__attribute__((used)) static void gmc_v9_0_set_umc_funcs(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 128:
  adev->umc.max_ras_err_cnt_per_query = UMC_V6_1_TOTAL_CHANNEL_NUM;
  adev->umc.channel_inst_num = UMC_V6_1_CHANNEL_INSTANCE_NUM;
  adev->umc.umc_inst_num = UMC_V6_1_UMC_INSTANCE_NUM;
  adev->umc.channel_offs = UMC_V6_1_PER_CHANNEL_OFFSET;
  adev->umc.channel_idx_tbl = &umc_v6_1_channel_idx_tbl[0][0];
  adev->umc.funcs = &umc_v6_1_funcs;
  break;
 default:
  break;
 }
}
