
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {int fence_buf_mc_addr; int tmr_mc_addr; int tmr_bo; } ;


 int DRM_INFO (char*,int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_bo_size (int ) ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_tmr_cmd_buf (struct psp_context*,struct psp_gfx_cmd_resp*,int ,int ) ;

__attribute__((used)) static int psp_tmr_load(struct psp_context *psp)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 psp_prep_tmr_cmd_buf(psp, cmd, psp->tmr_mc_addr,
        amdgpu_bo_size(psp->tmr_bo));
 DRM_INFO("reserve 0x%lx from 0x%llx for PSP TMR\n",
   amdgpu_bo_size(psp->tmr_bo), psp->tmr_mc_addr);

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
     psp->fence_buf_mc_addr);
 if (ret)
  goto failed;

 kfree(cmd);

 return 0;

failed:
 kfree(cmd);
 return ret;
}
