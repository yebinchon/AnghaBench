
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {int fence_buf_mc_addr; } ;
typedef enum psp_reg_prog_id { ____Placeholder_psp_reg_prog_id } psp_reg_prog_id ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PSP_REG_LAST ;
 int kfree (struct psp_gfx_cmd_resp*) ;
 struct psp_gfx_cmd_resp* kzalloc (int,int ) ;
 int psp_cmd_submit_buf (struct psp_context*,int *,struct psp_gfx_cmd_resp*,int ) ;
 int psp_prep_reg_prog_cmd_buf (struct psp_gfx_cmd_resp*,int,int ) ;

int psp_reg_program(struct psp_context *psp, enum psp_reg_prog_id reg,
  uint32_t value)
{
 struct psp_gfx_cmd_resp *cmd = ((void*)0);
 int ret = 0;

 if (reg >= PSP_REG_LAST)
  return -EINVAL;

 cmd = kzalloc(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 psp_prep_reg_prog_cmd_buf(cmd, reg, value);
 ret = psp_cmd_submit_buf(psp, ((void*)0), cmd, psp->fence_buf_mc_addr);

 kfree(cmd);
 return ret;
}
