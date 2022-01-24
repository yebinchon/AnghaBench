#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; } ;
struct rlc_firmware_header_v1_0 {TYPE_5__ header; } ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {TYPE_3__ rlc; TYPE_1__* rlc_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* start ) (struct amdgpu_device*) ;int /*<<< orphan*/  (* reset ) (struct amdgpu_device*) ;int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRLC_LB_CNTL ; 
 int /*<<< orphan*/  mmRLC_LB_CNTR_INIT ; 
 int /*<<< orphan*/  mmRLC_LB_CNTR_MAX ; 
 int /*<<< orphan*/  mmRLC_LB_INIT_CU_MASK ; 
 int /*<<< orphan*/  mmRLC_MC_CNTL ; 
 int /*<<< orphan*/  mmRLC_RL_BASE ; 
 int /*<<< orphan*/  mmRLC_RL_SIZE ; 
 int /*<<< orphan*/  mmRLC_UCODE_ADDR ; 
 int /*<<< orphan*/  mmRLC_UCODE_CNTL ; 
 int /*<<< orphan*/  mmRLC_UCODE_DATA ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	u32 i;
	const struct rlc_firmware_header_v1_0 *hdr;
	const __le32 *fw_data;
	u32 fw_size;


	if (!adev->gfx.rlc_fw)
		return -EINVAL;

	adev->gfx.rlc.funcs->stop(adev);
	adev->gfx.rlc.funcs->reset(adev);
	FUNC4(adev);
	FUNC3(adev);

	FUNC0(mmRLC_RL_BASE, 0);
	FUNC0(mmRLC_RL_SIZE, 0);
	FUNC0(mmRLC_LB_CNTL, 0);
	FUNC0(mmRLC_LB_CNTR_MAX, 0xffffffff);
	FUNC0(mmRLC_LB_CNTR_INIT, 0);
	FUNC0(mmRLC_LB_INIT_CU_MASK, 0xffffffff);

	FUNC0(mmRLC_MC_CNTL, 0);
	FUNC0(mmRLC_UCODE_CNTL, 0);

	hdr = (const struct rlc_firmware_header_v1_0 *)adev->gfx.rlc_fw->data;
	fw_size = FUNC6(hdr->header.ucode_size_bytes) / 4;
	fw_data = (const __le32 *)
		(adev->gfx.rlc_fw->data + FUNC6(hdr->header.ucode_array_offset_bytes));

	FUNC1(&hdr->header);

	for (i = 0; i < fw_size; i++) {
		FUNC0(mmRLC_UCODE_ADDR, i);
		FUNC0(mmRLC_UCODE_DATA, FUNC7(fw_data++));
	}
	FUNC0(mmRLC_UCODE_ADDR, 0);

	FUNC2(adev, FUNC5(adev));
	adev->gfx.rlc.funcs->start(adev);

	return 0;
}