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
typedef  unsigned int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {TYPE_5__ header; } ;
struct TYPE_8__ {int ce_fw_gpu_addr; int /*<<< orphan*/  ce_fw_obj; int /*<<< orphan*/  ce_fw_ptr; } ;
struct TYPE_9__ {TYPE_3__ ce; TYPE_1__* ce_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__* nbio_funcs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_CLAMP ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  CACHE_POLICY ; 
 int /*<<< orphan*/  CP_CE_IC_BASE_CNTL ; 
 int /*<<< orphan*/  CP_CE_IC_OP_CNTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  EXE_DISABLE ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  INVALIDATE_CACHE ; 
 int /*<<< orphan*/  INVALIDATE_CACHE_COMPLETE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  mmCP_CE_IC_BASE_CNTL ; 
 int /*<<< orphan*/  mmCP_CE_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_CE_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_CE_IC_OP_CNTL ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct amdgpu_device *adev)
{
	int r;
	const struct gfx_firmware_header_v1_0 *ce_hdr;
	const __le32 *fw_data;
	unsigned i, fw_size;
	uint32_t tmp;
	uint32_t usec_timeout = 50000;  /* wait for 50ms */

	ce_hdr = (const struct gfx_firmware_header_v1_0 *)
		adev->gfx.ce_fw->data;

	FUNC7(&ce_hdr->header);

	fw_data = (const __le32 *)(adev->gfx.ce_fw->data +
		FUNC10(ce_hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC10(ce_hdr->header.ucode_size_bytes);

	r = FUNC4(adev, ce_hdr->header.ucode_size_bytes,
				      PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
				      &adev->gfx.ce.ce_fw_obj,
				      &adev->gfx.ce.ce_fw_gpu_addr,
				      (void **)&adev->gfx.ce.ce_fw_ptr);
	if (r) {
		FUNC8(adev->dev, "(%d) failed to create ce fw bo\n", r);
		FUNC9(adev);
		return r;
	}

	FUNC11(adev->gfx.ce.ce_fw_ptr, fw_data, fw_size);

	FUNC5(adev->gfx.ce.ce_fw_obj);
	FUNC6(adev->gfx.ce.ce_fw_obj);

	/* Trigger an invalidation of the L1 instruction caches */
	tmp = FUNC2(GC, 0, mmCP_CE_IC_OP_CNTL);
	tmp = FUNC1(tmp, CP_CE_IC_OP_CNTL, INVALIDATE_CACHE, 1);
	FUNC3(GC, 0, mmCP_CE_IC_OP_CNTL, tmp);

	/* Wait for invalidation complete */
	for (i = 0; i < usec_timeout; i++) {
		tmp = FUNC2(GC, 0, mmCP_CE_IC_OP_CNTL);
		if (1 == FUNC0(tmp, CP_CE_IC_OP_CNTL,
			INVALIDATE_CACHE_COMPLETE))
			break;
		FUNC13(1);
	}

	if (i >= usec_timeout) {
		FUNC8(adev->dev, "failed to invalidate instruction cache\n");
		return -EINVAL;
	}

	if (amdgpu_emu_mode == 1)
		adev->nbio_funcs->hdp_flush(adev, NULL);

	tmp = FUNC2(GC, 0, mmCP_CE_IC_BASE_CNTL);
	tmp = FUNC1(tmp, CP_CE_IC_BASE_CNTL, VMID, 0);
	tmp = FUNC1(tmp, CP_CE_IC_BASE_CNTL, CACHE_POLICY, 0);
	tmp = FUNC1(tmp, CP_CE_IC_BASE_CNTL, EXE_DISABLE, 0);
	tmp = FUNC1(tmp, CP_CE_IC_BASE_CNTL, ADDRESS_CLAMP, 1);
	FUNC3(GC, 0, mmCP_CE_IC_BASE_LO,
		adev->gfx.ce.ce_fw_gpu_addr & 0xFFFFF000);
	FUNC3(GC, 0, mmCP_CE_IC_BASE_HI,
		FUNC14(adev->gfx.ce.ce_fw_gpu_addr));

	return 0;
}