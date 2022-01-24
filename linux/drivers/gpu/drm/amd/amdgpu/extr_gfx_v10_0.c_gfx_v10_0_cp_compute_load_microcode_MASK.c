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
typedef  unsigned int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {unsigned int jt_size; int jt_offset; TYPE_5__ header; } ;
struct TYPE_8__ {int mec_fw_gpu_addr; } ;
struct TYPE_9__ {int mec_fw_version; TYPE_3__ mec; TYPE_1__* mec_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__* nbio_funcs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_CLAMP ; 
 int /*<<< orphan*/  CACHE_POLICY ; 
 int /*<<< orphan*/  CP_CPC_IC_BASE_CNTL ; 
 int /*<<< orphan*/  CP_CPC_IC_OP_CNTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  EXE_DISABLE ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  INVALIDATE_CACHE ; 
 int /*<<< orphan*/  INVALIDATE_CACHE_COMPLETE ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_CNTL ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_CPC_IC_OP_CNTL ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_DATA ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	const struct gfx_firmware_header_v1_0 *mec_hdr;
	const __le32 *fw_data;
	unsigned i;
	u32 tmp;
	u32 usec_timeout = 50000; /* Wait for 50 ms */

	if (!adev->gfx.mec_fw)
		return -EINVAL;

	FUNC6(adev, false);

	mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
	FUNC4(&mec_hdr->header);

	fw_data = (const __le32 *)
		(adev->gfx.mec_fw->data +
		 FUNC7(mec_hdr->header.ucode_array_offset_bytes));

	/* Trigger an invalidation of the L1 instruction caches */
	tmp = FUNC2(GC, 0, mmCP_CPC_IC_OP_CNTL);
	tmp = FUNC1(tmp, CP_CPC_IC_OP_CNTL, INVALIDATE_CACHE, 1);
	FUNC3(GC, 0, mmCP_CPC_IC_OP_CNTL, tmp);

	/* Wait for invalidation complete */
	for (i = 0; i < usec_timeout; i++) {
		tmp = FUNC2(GC, 0, mmCP_CPC_IC_OP_CNTL);
		if (1 == FUNC0(tmp, CP_CPC_IC_OP_CNTL,
				       INVALIDATE_CACHE_COMPLETE))
			break;
		FUNC10(1);
	}

	if (i >= usec_timeout) {
		FUNC5(adev->dev, "failed to invalidate instruction cache\n");
		return -EINVAL;
	}

	if (amdgpu_emu_mode == 1)
		adev->nbio_funcs->hdp_flush(adev, NULL);

	tmp = FUNC2(GC, 0, mmCP_CPC_IC_BASE_CNTL);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, EXE_DISABLE, 0);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, ADDRESS_CLAMP, 1);
	FUNC3(GC, 0, mmCP_CPC_IC_BASE_CNTL, tmp);

	FUNC3(GC, 0, mmCP_CPC_IC_BASE_LO, adev->gfx.mec.mec_fw_gpu_addr &
		     0xFFFFF000);
	FUNC3(GC, 0, mmCP_CPC_IC_BASE_HI,
		     FUNC11(adev->gfx.mec.mec_fw_gpu_addr));

	/* MEC1 */
	FUNC3(GC, 0, mmCP_MEC_ME1_UCODE_ADDR, 0);

	for (i = 0; i < mec_hdr->jt_size; i++)
		FUNC3(GC, 0, mmCP_MEC_ME1_UCODE_DATA,
			     FUNC8(fw_data + mec_hdr->jt_offset + i));

	FUNC3(GC, 0, mmCP_MEC_ME1_UCODE_ADDR, adev->gfx.mec_fw_version);

	/*
	 * TODO: Loading MEC2 firmware is only necessary if MEC2 should run
	 * different microcode than MEC1.
	 */

	return 0;
}