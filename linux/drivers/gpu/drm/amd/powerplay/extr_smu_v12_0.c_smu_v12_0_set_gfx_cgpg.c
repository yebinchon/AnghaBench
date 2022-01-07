
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {TYPE_1__* adev; } ;
struct TYPE_2__ {int pg_flags; } ;


 int AMD_PG_SUPPORT_GFX_PG ;
 int SMU_MSG_SetGfxCGPG ;
 int smu_v12_0_send_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int smu_v12_0_set_gfx_cgpg(struct smu_context *smu, bool enable)
{
 if (!(smu->adev->pg_flags & AMD_PG_SUPPORT_GFX_PG))
  return 0;

 return smu_v12_0_send_msg_with_param(smu,
  SMU_MSG_SetGfxCGPG, enable ? 1 : 0);
}
