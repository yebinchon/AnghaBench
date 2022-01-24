#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {int jt_offset; unsigned int jt_size; TYPE_4__ header; } ;
struct TYPE_6__ {int mec_fw_gpu_addr; } ;
struct TYPE_7__ {int mec_fw_version; TYPE_2__ mec; TYPE_1__* mec_fw; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_POLICY ; 
 int /*<<< orphan*/  CP_CPC_IC_BASE_CNTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  GC ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_CNTL ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_DATA ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	const struct gfx_firmware_header_v1_0 *mec_hdr;
	const __le32 *fw_data;
	unsigned i;
	u32 tmp;

	if (!adev->gfx.mec_fw)
		return -EINVAL;

	FUNC3(adev, false);

	mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
	FUNC2(&mec_hdr->header);

	fw_data = (const __le32 *)
		(adev->gfx.mec_fw->data +
		 FUNC4(mec_hdr->header.ucode_array_offset_bytes));
	tmp = 0;
	tmp = FUNC0(tmp, CP_CPC_IC_BASE_CNTL, VMID, 0);
	tmp = FUNC0(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
	FUNC1(GC, 0, mmCP_CPC_IC_BASE_CNTL, tmp);

	FUNC1(GC, 0, mmCP_CPC_IC_BASE_LO,
		adev->gfx.mec.mec_fw_gpu_addr & 0xFFFFF000);
	FUNC1(GC, 0, mmCP_CPC_IC_BASE_HI,
		FUNC6(adev->gfx.mec.mec_fw_gpu_addr));

	/* MEC1 */
	FUNC1(GC, 0, mmCP_MEC_ME1_UCODE_ADDR,
			 mec_hdr->jt_offset);
	for (i = 0; i < mec_hdr->jt_size; i++)
		FUNC1(GC, 0, mmCP_MEC_ME1_UCODE_DATA,
			FUNC5(fw_data + mec_hdr->jt_offset + i));

	FUNC1(GC, 0, mmCP_MEC_ME1_UCODE_ADDR,
			adev->gfx.mec_fw_version);
	/* Todo : Loading MEC2 firmware is only necessary if MEC2 should run different microcode than MEC1. */

	return 0;
}