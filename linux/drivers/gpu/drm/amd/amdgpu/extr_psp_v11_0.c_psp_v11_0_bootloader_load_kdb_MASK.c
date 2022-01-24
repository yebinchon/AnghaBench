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
typedef  void* uint32_t ;
struct psp_context {int fw_pri_mc_addr; int /*<<< orphan*/  kdb_bin_size; int /*<<< orphan*/  kdb_start_addr; int /*<<< orphan*/  fw_pri_buf; void* sos_fw_version; struct amdgpu_device* adev; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  PSP_1_MEG ; 
 void* PSP_BL__LOAD_KEY_DATABASE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_35 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_36 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_58 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_81 ; 
 int FUNC6 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct psp_context *psp)
{
	int ret;
	uint32_t psp_gfxdrv_command_reg = 0;
	struct amdgpu_device *adev = psp->adev;
	uint32_t sol_reg;

	/* Check tOS sign of life register to confirm sys driver and sOS
	 * are already been loaded.
	 */
	sol_reg = FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_81);
	if (sol_reg) {
		psp->sos_fw_version = FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_58);
		FUNC3(adev->dev, "sos fw version = 0x%x.\n", psp->sos_fw_version);
		return 0;
	}

	/* Wait for bootloader to signify that is ready having bit 31 of C2PMSG_35 set to 1 */
	ret = FUNC6(psp, FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_35),
			   0x80000000, 0x80000000, false);
	if (ret)
		return ret;

	FUNC5(psp->fw_pri_buf, 0, PSP_1_MEG);

	/* Copy PSP KDB binary to memory */
	FUNC4(psp->fw_pri_buf, psp->kdb_start_addr, psp->kdb_bin_size);

	/* Provide the sys driver to bootloader */
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_36,
	       (uint32_t)(psp->fw_pri_mc_addr >> 20));
	psp_gfxdrv_command_reg = PSP_BL__LOAD_KEY_DATABASE;
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_35,
	       psp_gfxdrv_command_reg);

	/* Wait for bootloader to signify that is ready having  bit 31 of C2PMSG_35 set to 1*/
	ret = FUNC6(psp, FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_35),
			   0x80000000, 0x80000000, false);

	return ret;
}