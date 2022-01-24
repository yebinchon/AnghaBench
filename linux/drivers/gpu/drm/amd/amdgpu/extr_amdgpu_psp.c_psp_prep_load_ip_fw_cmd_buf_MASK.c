#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  fw_type; int /*<<< orphan*/  fw_size; int /*<<< orphan*/  fw_phy_addr_hi; int /*<<< orphan*/  fw_phy_addr_lo; } ;
struct TYPE_4__ {TYPE_1__ cmd_load_ip_fw; } ;
struct psp_gfx_cmd_resp {TYPE_2__ cmd; int /*<<< orphan*/  cmd_id; } ;
struct amdgpu_firmware_info {int /*<<< orphan*/  ucode_size; int /*<<< orphan*/  mc_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFX_CMD_ID_LOAD_IP_FW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct amdgpu_firmware_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_firmware_info *ucode,
				       struct psp_gfx_cmd_resp *cmd)
{
	int ret;
	uint64_t fw_mem_mc_addr = ucode->mc_addr;

	FUNC2(cmd, 0, sizeof(struct psp_gfx_cmd_resp));

	cmd->cmd_id = GFX_CMD_ID_LOAD_IP_FW;
	cmd->cmd.cmd_load_ip_fw.fw_phy_addr_lo = FUNC1(fw_mem_mc_addr);
	cmd->cmd.cmd_load_ip_fw.fw_phy_addr_hi = FUNC4(fw_mem_mc_addr);
	cmd->cmd.cmd_load_ip_fw.fw_size = ucode->ucode_size;

	ret = FUNC3(ucode, &cmd->cmd.cmd_load_ip_fw.fw_type);
	if (ret)
		FUNC0("Unknown firmware type\n");

	return ret;
}