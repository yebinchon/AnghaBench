
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int fence_buf_mc_addr; int cmd; } ;
struct amdgpu_firmware_info {int dummy; } ;


 int psp_cmd_submit_buf (struct psp_context*,struct amdgpu_firmware_info*,int ,int ) ;
 int psp_prep_load_ip_fw_cmd_buf (struct amdgpu_firmware_info*,int ) ;

__attribute__((used)) static int psp_execute_np_fw_load(struct psp_context *psp,
          struct amdgpu_firmware_info *ucode)
{
 int ret = 0;

 ret = psp_prep_load_ip_fw_cmd_buf(ucode, psp->cmd);
 if (ret)
  return ret;

 ret = psp_cmd_submit_buf(psp, ucode, psp->cmd,
     psp->fence_buf_mc_addr);

 return ret;
}
