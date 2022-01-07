
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {int fence_buf_mc_addr; int asd_ucode_size; int asd_shared_mc_addr; int fw_pri_mc_addr; int asd_start_addr; int fw_pri_buf; int adev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSP_1_MEG ;
 int PSP_ASD_SHARED_MEM_SIZE ;
 scalar_t__ amdgpu_sriov_vf (int ) ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_asd_cmd_buf (struct psp_gfx_cmd_resp*,int ,int ,int ,int ) ;

__attribute__((used)) static int psp_asd_load(struct psp_context *psp)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;





 if (amdgpu_sriov_vf(psp->adev))
  return 0;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 memset(psp->fw_pri_buf, 0, PSP_1_MEG);
 memcpy(psp->fw_pri_buf, psp->asd_start_addr, psp->asd_ucode_size);

 psp_prep_asd_cmd_buf(cmd, psp->fw_pri_mc_addr, psp->asd_shared_mc_addr,
        psp->asd_ucode_size, PSP_ASD_SHARED_MEM_SIZE);

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
     psp->fence_buf_mc_addr);

 kfree(cmd);

 return ret;
}
