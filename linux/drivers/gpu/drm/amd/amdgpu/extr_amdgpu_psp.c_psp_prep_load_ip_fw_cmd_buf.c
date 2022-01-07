
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int fw_type; int fw_size; int fw_phy_addr_hi; int fw_phy_addr_lo; } ;
struct TYPE_4__ {TYPE_1__ cmd_load_ip_fw; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int cmd_id; } ;
struct amdgpu_firmware_info {int ucode_size; int mc_addr; } ;


 int DRM_ERROR (char*) ;
 int GFX_CMD_ID_LOAD_IP_FW ;
 int lower_32_bits (int ) ;
 int memset (struct psp_gfx_cmd_resp*,int ,int) ;
 int psp_get_fw_type (struct amdgpu_firmware_info*,int *) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int psp_prep_load_ip_fw_cmd_buf(struct amdgpu_firmware_info *ucode,
           struct psp_gfx_cmd_resp *cmd)
{
 int ret;
 uint64_t fw_mem_mc_addr = ucode->mc_addr;

 memset(cmd, 0, sizeof(struct psp_gfx_cmd_resp));

 cmd->cmd_id = GFX_CMD_ID_LOAD_IP_FW;
 cmd->cmd.cmd_load_ip_fw.fw_phy_addr_lo = lower_32_bits(fw_mem_mc_addr);
 cmd->cmd.cmd_load_ip_fw.fw_phy_addr_hi = upper_32_bits(fw_mem_mc_addr);
 cmd->cmd.cmd_load_ip_fw.fw_size = ucode->ucode_size;

 ret = psp_get_fw_type(ucode, &cmd->cmd.cmd_load_ip_fw.fw_type);
 if (ret)
  DRM_ERROR("Unknown firmware type\n");

 return ret;
}
