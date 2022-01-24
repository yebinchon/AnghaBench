#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psp_device {int /*<<< orphan*/  dev; TYPE_1__* vdata; scalar_t__ io_regs; scalar_t__ sev_int_rcvd; } ;
struct TYPE_2__ {scalar_t__ cmdresp_reg; scalar_t__ cmdbuff_addr_hi_reg; scalar_t__ cmdbuff_addr_lo_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EBUSY ; 
 unsigned int EIO ; 
 int ENODEV ; 
 unsigned int PSP_CMDRESP_CMD_SHIFT ; 
 unsigned int PSP_CMDRESP_ERR_MASK ; 
 unsigned int PSP_CMDRESP_IOC ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  psp_cmd_timeout ; 
 int psp_dead ; 
 struct psp_device* psp_master ; 
 int /*<<< orphan*/  psp_timeout ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (struct psp_device*,unsigned int*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(int cmd, void *data, int *psp_ret)
{
	struct psp_device *psp = psp_master;
	unsigned int phys_lsb, phys_msb;
	unsigned int reg, ret = 0;

	if (!psp)
		return -ENODEV;

	if (psp_dead)
		return -EBUSY;

	/* Get the physical address of the command buffer */
	phys_lsb = data ? FUNC4(FUNC0(data)) : 0;
	phys_msb = data ? FUNC8(FUNC0(data)) : 0;

	FUNC1(psp->dev, "sev command id %#x buffer 0x%08x%08x timeout %us\n",
		cmd, phys_msb, phys_lsb, psp_timeout);

	FUNC5("(in):  ", DUMP_PREFIX_OFFSET, 16, 2, data,
			     FUNC6(cmd), false);

	FUNC3(phys_lsb, psp->io_regs + psp->vdata->cmdbuff_addr_lo_reg);
	FUNC3(phys_msb, psp->io_regs + psp->vdata->cmdbuff_addr_hi_reg);

	psp->sev_int_rcvd = 0;

	reg = cmd;
	reg <<= PSP_CMDRESP_CMD_SHIFT;
	reg |= PSP_CMDRESP_IOC;
	FUNC3(reg, psp->io_regs + psp->vdata->cmdresp_reg);

	/* wait for command completion */
	ret = FUNC7(psp, &reg, psp_timeout);
	if (ret) {
		if (psp_ret)
			*psp_ret = 0;

		FUNC2(psp->dev, "sev command %#x timed out, disabling PSP \n", cmd);
		psp_dead = true;

		return ret;
	}

	psp_timeout = psp_cmd_timeout;

	if (psp_ret)
		*psp_ret = reg & PSP_CMDRESP_ERR_MASK;

	if (reg & PSP_CMDRESP_ERR_MASK) {
		FUNC1(psp->dev, "sev command %#x failed (%#010x)\n",
			cmd, reg & PSP_CMDRESP_ERR_MASK);
		ret = -EIO;
	}

	FUNC5("(out): ", DUMP_PREFIX_OFFSET, 16, 2, data,
			     FUNC6(cmd), false);

	return ret;
}