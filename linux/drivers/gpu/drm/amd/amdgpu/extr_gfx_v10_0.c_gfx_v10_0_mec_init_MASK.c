#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_15__ {size_t ucode_array_offset_bytes; size_t ucode_size_bytes; } ;
struct gfx_firmware_header_v1_0 {TYPE_5__ header; } ;
struct TYPE_16__ {TYPE_8__* mec_fw_obj; int /*<<< orphan*/  mec_fw_gpu_addr; TYPE_8__* hpd_eop_obj; int /*<<< orphan*/  hpd_eop_gpu_addr; int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_17__ {size_t num_compute_rings; TYPE_6__ mec; TYPE_4__* mec_fw; } ;
struct TYPE_13__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_7__ gfx; int /*<<< orphan*/  dev; TYPE_3__ firmware; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_11__ {int /*<<< orphan*/  size; } ;
struct TYPE_12__ {TYPE_1__ mem; } ;
struct TYPE_18__ {TYPE_2__ tbo; } ;
struct TYPE_14__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  AMDGPU_MAX_COMPUTE_QUEUES ; 
 size_t GFX10_MEC_HPD_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 unsigned int FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	int r;
	u32 *hpd;
	const __le32 *fw_data = NULL;
	unsigned fw_size;
	u32 *fw = NULL;
	size_t mec_hpd_size;

	const struct gfx_firmware_header_v1_0 *mec_hdr = NULL;

	FUNC4(adev->gfx.mec.queue_bitmap, AMDGPU_MAX_COMPUTE_QUEUES);

	/* take ownership of the relevant compute queues */
	FUNC3(adev);
	mec_hpd_size = adev->gfx.num_compute_rings * GFX10_MEC_HPD_SIZE;

	r = FUNC0(adev, mec_hpd_size, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_GTT,
				      &adev->gfx.mec.hpd_eop_obj,
				      &adev->gfx.mec.hpd_eop_gpu_addr,
				      (void **)&hpd);
	if (r) {
		FUNC6(adev->dev, "(%d) create HDP EOP bo failed\n", r);
		FUNC7(adev);
		return r;
	}

	FUNC10(hpd, 0, adev->gfx.mec.hpd_eop_obj->tbo.mem.size);

	FUNC1(adev->gfx.mec.hpd_eop_obj);
	FUNC2(adev->gfx.mec.hpd_eop_obj);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT) {
		mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;

		fw_data = (const __le32 *) (adev->gfx.mec_fw->data +
			 FUNC8(mec_hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC8(mec_hdr->header.ucode_size_bytes);

		r = FUNC0(adev, mec_hdr->header.ucode_size_bytes,
					      PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
					      &adev->gfx.mec.mec_fw_obj,
					      &adev->gfx.mec.mec_fw_gpu_addr,
					      (void **)&fw);
		if (r) {
			FUNC5(adev->dev, "(%d) failed to create mec fw bo\n", r);
			FUNC7(adev);
			return r;
		}

		FUNC9(fw, fw_data, fw_size);

		FUNC1(adev->gfx.mec.mec_fw_obj);
		FUNC2(adev->gfx.mec.mec_fw_obj);
	}

	return 0;
}