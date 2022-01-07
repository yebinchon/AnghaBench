
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_gfx_cmd_resp {int cmd_id; } ;
struct psp_context {int fence_buf_mc_addr; int adev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GFX_CMD_ID_AUTOLOAD_RLC ;
 scalar_t__ amdgpu_sriov_vf (int ) ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;

int psp_rlc_autoload_start(struct psp_context *psp)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;

 if (amdgpu_sriov_vf(psp->adev))
  return 0;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->cmd_id = GFX_CMD_ID_AUTOLOAD_RLC;

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
     psp->fence_buf_mc_addr);
 kfree(cmd);
 return ret;
}
