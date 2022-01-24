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
struct psp_gfx_cmd_resp {int dummy; } ;
struct psp_context {int /*<<< orphan*/  fence_buf_mc_addr; int /*<<< orphan*/  tmr_mc_addr; int /*<<< orphan*/  tmr_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psp_gfx_cmd_resp*) ; 
 struct psp_gfx_cmd_resp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct psp_context*,int /*<<< orphan*/ *,struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct psp_context*,struct psp_gfx_cmd_resp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct psp_context *psp)
{
	int ret;
	struct psp_gfx_cmd_resp *cmd;

	cmd = FUNC3(sizeof(struct psp_gfx_cmd_resp), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	FUNC5(psp, cmd, psp->tmr_mc_addr,
			     FUNC1(psp->tmr_bo));
	FUNC0("reserve 0x%lx from 0x%llx for PSP TMR\n",
		 FUNC1(psp->tmr_bo), psp->tmr_mc_addr);

	ret = FUNC4(psp, NULL, cmd,
				 psp->fence_buf_mc_addr);
	if (ret)
		goto failed;

	FUNC2(cmd);

	return 0;

failed:
	FUNC2(cmd);
	return ret;
}