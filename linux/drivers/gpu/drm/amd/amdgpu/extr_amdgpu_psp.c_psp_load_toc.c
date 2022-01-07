
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {TYPE_2__* cmd_buf_mem; int fence_buf_mc_addr; int toc_bin_size; int fw_pri_mc_addr; int toc_start_addr; int fw_pri_buf; } ;
struct TYPE_3__ {int tmr_size; } ;
struct TYPE_4__ {TYPE_1__ resp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSP_1_MEG ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_load_toc_cmd_buf (struct psp_gfx_cmd_resp*,int ,int ) ;

__attribute__((used)) static int psp_load_toc(struct psp_context *psp,
   uint32_t *tmr_size)
{
 int ret;
 struct psp_gfx_cmd_resp *cmd;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 memset(psp->fw_pri_buf, 0, PSP_1_MEG);
 memcpy(psp->fw_pri_buf, psp->toc_start_addr, psp->toc_bin_size);

 psp_prep_load_toc_cmd_buf(cmd, psp->fw_pri_mc_addr, psp->toc_bin_size);

 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd,
     psp->fence_buf_mc_addr);
 if (!ret)
  *tmr_size = psp->cmd_buf_mem->resp.tmr_size;
 kfree(cmd);
 return ret;
}
