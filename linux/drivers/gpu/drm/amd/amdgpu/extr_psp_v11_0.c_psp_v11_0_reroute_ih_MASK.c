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
typedef  int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_TYPE ; 
 int /*<<< orphan*/  CREDIT_RETURN_ADDR ; 
 int GFX_CTRL_CMD_ID_GBR_IH_SET ; 
 int /*<<< orphan*/  IH_CLIENT_CFG_DATA ; 
 int /*<<< orphan*/  MP0 ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RING_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_64 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_69 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_70 ; 
 int /*<<< orphan*/  FUNC4 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct psp_context *psp)
{
	struct amdgpu_device *adev = psp->adev;
	uint32_t tmp;

	/* Change IH ring for VMC */
	tmp = FUNC0(0, IH_CLIENT_CFG_DATA, CREDIT_RETURN_ADDR, 0x1244b);
	tmp = FUNC0(tmp, IH_CLIENT_CFG_DATA, CLIENT_TYPE, 1);
	tmp = FUNC0(tmp, IH_CLIENT_CFG_DATA, RING_ID, 1);

	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_69, 3);
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_70, tmp);
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_64, GFX_CTRL_CMD_ID_GBR_IH_SET);

	FUNC3(20);
	FUNC4(psp, FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_64),
		     0x80000000, 0x8000FFFF, false);

	/* Change IH ring for UMC */
	tmp = FUNC0(0, IH_CLIENT_CFG_DATA, CREDIT_RETURN_ADDR, 0x1216b);
	tmp = FUNC0(tmp, IH_CLIENT_CFG_DATA, RING_ID, 1);

	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_69, 4);
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_70, tmp);
	FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_64, GFX_CTRL_CMD_ID_GBR_IH_SET);

	FUNC3(20);
	FUNC4(psp, FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_64),
		     0x80000000, 0x8000FFFF, false);
}