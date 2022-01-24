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
struct TYPE_4__ {int /*<<< orphan*/  session_id; } ;
struct psp_gfx_cmd_resp {TYPE_2__ resp; } ;
struct TYPE_3__ {int initialized; int /*<<< orphan*/  session_id; int /*<<< orphan*/  xgmi_shared_mc_addr; } ;
struct psp_context {TYPE_1__ xgmi_context; int /*<<< orphan*/  fence_buf_mc_addr; int /*<<< orphan*/  ta_xgmi_ucode_size; int /*<<< orphan*/  fw_pri_mc_addr; int /*<<< orphan*/  ta_xgmi_start_addr; int /*<<< orphan*/  fw_pri_buf; int /*<<< orphan*/  adev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PSP_1_MEG ; 
 int /*<<< orphan*/  PSP_XGMI_SHARED_MEM_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psp_gfx_cmd_resp*) ; 
 struct psp_gfx_cmd_resp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct psp_context*,int /*<<< orphan*/ *,struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct psp_context *psp)
{
	int ret;
	struct psp_gfx_cmd_resp *cmd;

	/*
	 * TODO: bypass the loading in sriov for now
	 */
	if (FUNC0(psp->adev))
		return 0;

	cmd = FUNC2(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	FUNC4(psp->fw_pri_buf, 0, PSP_1_MEG);
	FUNC3(psp->fw_pri_buf, psp->ta_xgmi_start_addr, psp->ta_xgmi_ucode_size);

	FUNC6(cmd, psp->fw_pri_mc_addr,
				      psp->xgmi_context.xgmi_shared_mc_addr,
				      psp->ta_xgmi_ucode_size, PSP_XGMI_SHARED_MEM_SIZE);

	ret = FUNC5(psp, NULL, cmd,
				 psp->fence_buf_mc_addr);

	if (!ret) {
		psp->xgmi_context.initialized = 1;
		psp->xgmi_context.session_id = cmd->resp.session_id;
	}

	FUNC1(cmd);

	return ret;
}