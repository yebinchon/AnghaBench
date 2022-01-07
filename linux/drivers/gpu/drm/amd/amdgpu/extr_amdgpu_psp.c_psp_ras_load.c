
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int session_id; } ;
struct psp_gfx_cmd_resp {TYPE_2__ resp; } ;
struct TYPE_3__ {int ras_initialized; int session_id; int ras_shared_mc_addr; } ;
struct psp_context {TYPE_1__ ras; int fence_buf_mc_addr; int ta_ras_ucode_size; int fw_pri_mc_addr; int ta_ras_start_addr; int fw_pri_buf; int adev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSP_1_MEG ;
 int PSP_RAS_SHARED_MEM_SIZE ;
 scalar_t__ amdgpu_sriov_vf (int ) ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_ras_ta_load_cmd_buf (struct psp_gfx_cmd_resp*,int ,int ,int ,int ) ;

__attribute__((used)) static int psp_ras_load(struct psp_context *psp)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;




 if (amdgpu_sriov_vf(psp->adev))
  return 0;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 memset(psp->fw_pri_buf, 0, PSP_1_MEG);
 memcpy(psp->fw_pri_buf, psp->ta_ras_start_addr, psp->ta_ras_ucode_size);

 psp_prep_ras_ta_load_cmd_buf(cmd, psp->fw_pri_mc_addr,
   psp->ras.ras_shared_mc_addr,
   psp->ta_ras_ucode_size, PSP_RAS_SHARED_MEM_SIZE);

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
   psp->fence_buf_mc_addr);

 if (!ret) {
  psp->ras.ras_initialized = 1;
  psp->ras.session_id = cmd->resp.session_id;
 }

 kfree(cmd);

 return ret;
}
