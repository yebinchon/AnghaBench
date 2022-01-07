
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_gfx_cmd_resp {int dummy; } ;
struct TYPE_2__ {int session_id; } ;
struct psp_context {int fence_buf_mc_addr; TYPE_1__ ras; int adev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_sriov_vf (int ) ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_ras_ta_unload_cmd_buf (struct psp_gfx_cmd_resp*,int ) ;

__attribute__((used)) static int psp_ras_unload(struct psp_context *psp)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;




 if (amdgpu_sriov_vf(psp->adev))
  return 0;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 psp_prep_ras_ta_unload_cmd_buf(cmd, psp->ras.session_id);

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
   psp->fence_buf_mc_addr);

 kfree(cmd);

 return ret;
}
