#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct psp_gfx_cmd_resp {int /*<<< orphan*/  cmd_id; } ;
struct psp_context {int /*<<< orphan*/  fence_buf_mc_addr; int /*<<< orphan*/  adev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFX_CMD_ID_AUTOLOAD_RLC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psp_gfx_cmd_resp*) ; 
 struct psp_gfx_cmd_resp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct psp_context*,int /*<<< orphan*/ *,struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ) ; 

int FUNC4(struct psp_context *psp)
{
	int ret;
	struct psp_gfx_cmd_resp *cmd;

	if (FUNC0(psp->adev))
		return 0;

	cmd = FUNC2(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->cmd_id = GFX_CMD_ID_AUTOLOAD_RLC;

	ret = FUNC3(psp, NULL, cmd,
				 psp->fence_buf_mc_addr);
	FUNC1(cmd);
	return ret;
}