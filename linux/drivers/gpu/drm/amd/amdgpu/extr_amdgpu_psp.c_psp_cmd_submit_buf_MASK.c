#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  session_id; } ;
struct psp_gfx_cmd_resp {TYPE_1__ resp; } ;
struct psp_context {int /*<<< orphan*/  mutex; TYPE_3__* cmd_buf_mem; scalar_t__ fence_buf; int /*<<< orphan*/  fence_value; int /*<<< orphan*/  cmd_buf_mc_addr; } ;
struct amdgpu_firmware_info {int ucode_id; int /*<<< orphan*/  tmr_mc_addr_hi; int /*<<< orphan*/  tmr_mc_addr_lo; } ;
struct TYPE_6__ {int status; int /*<<< orphan*/  fw_addr_hi; int /*<<< orphan*/  fw_addr_lo; int /*<<< orphan*/  session_id; } ;
struct TYPE_7__ {TYPE_2__ resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int GFX_CMD_STATUS_MASK ; 
 int /*<<< orphan*/  PSP_CMD_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct psp_gfx_cmd_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct psp_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct psp_context *psp,
		   struct amdgpu_firmware_info *ucode,
		   struct psp_gfx_cmd_resp *cmd, uint64_t fence_mc_addr)
{
	int ret;
	int index;
	int timeout = 2000;

	FUNC6(&psp->mutex);

	FUNC4(psp->cmd_buf_mem, 0, PSP_CMD_BUFFER_SIZE);

	FUNC3(psp->cmd_buf_mem, cmd, sizeof(struct psp_gfx_cmd_resp));

	index = FUNC2(&psp->fence_value);
	ret = FUNC8(psp, psp->cmd_buf_mc_addr, fence_mc_addr, index);
	if (ret) {
		FUNC1(&psp->fence_value);
		FUNC7(&psp->mutex);
		return ret;
	}

	while (*((unsigned int *)psp->fence_buf) != index) {
		if (--timeout == 0)
			break;
		FUNC5(1);
	}

	/* In some cases, psp response status is not 0 even there is no
	 * problem while the command is submitted. Some version of PSP FW
	 * doesn't write 0 to that field.
	 * So here we would like to only print a warning instead of an error
	 * during psp initialization to avoid breaking hw_init and it doesn't
	 * return -EINVAL.
	 */
	if (psp->cmd_buf_mem->resp.status || !timeout) {
		if (ucode)
			FUNC0("failed to load ucode id (%d) ",
				  ucode->ucode_id);
		FUNC0("psp command failed and response status is (0x%X)\n",
			  psp->cmd_buf_mem->resp.status & GFX_CMD_STATUS_MASK);
		if (!timeout) {
			FUNC7(&psp->mutex);
			return -EINVAL;
		}
	}

	/* get xGMI session id from response buffer */
	cmd->resp.session_id = psp->cmd_buf_mem->resp.session_id;

	if (ucode) {
		ucode->tmr_mc_addr_lo = psp->cmd_buf_mem->resp.fw_addr_lo;
		ucode->tmr_mc_addr_hi = psp->cmd_buf_mem->resp.fw_addr_hi;
	}
	FUNC7(&psp->mutex);

	return ret;
}