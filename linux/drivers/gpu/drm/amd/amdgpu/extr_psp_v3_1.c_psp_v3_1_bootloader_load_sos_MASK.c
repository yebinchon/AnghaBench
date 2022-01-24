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
typedef  unsigned int uint32_t ;
struct psp_context {int sos_fw_version; int fw_pri_mc_addr; int /*<<< orphan*/  sos_bin_size; int /*<<< orphan*/  sos_start_addr; int /*<<< orphan*/  fw_pri_buf; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  PSP_1_MEG ; 
 unsigned int PSP_BL__LOAD_SOSDRV ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_35 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_36 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_58 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_81 ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,unsigned int) ; 
 int FUNC9 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC10(struct psp_context *psp)
{
	int ret;
	unsigned int psp_gfxdrv_command_reg = 0;
	struct amdgpu_device *adev = psp->adev;
	uint32_t sol_reg, ver;

	/* Check sOS sign of life register to confirm sys driver and sOS
	 * are already been loaded.
	 */
	sol_reg = FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_81);
	if (sol_reg) {
		psp->sos_fw_version = FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_58);
		FUNC7("sos fw version = 0x%x.\n", psp->sos_fw_version);
		return 0;
	}

	/* Wait for bootloader to signify that is ready having bit 31 of C2PMSG_35 set to 1 */
	ret = FUNC9(psp, FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_35),
			   0x80000000, 0x80000000, false);
	if (ret)
		return ret;

	FUNC6(psp->fw_pri_buf, 0, PSP_1_MEG);

	/* Copy Secure OS binary to PSP memory */
	FUNC5(psp->fw_pri_buf, psp->sos_start_addr, psp->sos_bin_size);

	/* Provide the PSP secure OS to bootloader */
	FUNC3(MP0, 0, mmMP0_SMN_C2PMSG_36,
	       (uint32_t)(psp->fw_pri_mc_addr >> 20));
	psp_gfxdrv_command_reg = PSP_BL__LOAD_SOSDRV;
	FUNC3(MP0, 0, mmMP0_SMN_C2PMSG_35,
	       psp_gfxdrv_command_reg);

	/* there might be handshake issue with hardware which needs delay */
	FUNC4(20);
	ret = FUNC9(psp, FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_81),
			   FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_81),
			   0, true);

	ver = FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_58);
	if (!FUNC8(adev, ver))
		FUNC0("SOS version doesn't match\n");

	return ret;
}