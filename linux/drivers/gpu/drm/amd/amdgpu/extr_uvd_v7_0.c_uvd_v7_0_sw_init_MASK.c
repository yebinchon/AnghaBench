#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; } ;
struct amdgpu_ring {int me; int use_doorbell; int doorbell_index; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int num_uvd_inst; int harvest_config; int num_enc_rings; TYPE_6__* inst; TYPE_2__* fw; } ;
struct TYPE_11__ {int uvd_ring0_1; int uvd_ring2_3; } ;
struct TYPE_12__ {TYPE_4__ uvd_vce; } ;
struct TYPE_10__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; TYPE_1__* ucode; } ;
struct amdgpu_device {TYPE_7__ uvd; TYPE_5__ doorbell_index; TYPE_3__ firmware; } ;
struct TYPE_13__ {int /*<<< orphan*/  irq; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {size_t ucode_id; TYPE_2__* fw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_UVD ; 
 size_t AMDGPU_UCODE_ID_UVD1 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int UVD7_MAX_HW_INSTANCES_VEGA20 ; 
 scalar_t__ UVD_7_0__SRCID__UVD_ENC_GEN_PURP ; 
 scalar_t__ UVD_7_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT ; 
 int /*<<< orphan*/ * amdgpu_ih_clientid_uvds ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_ring*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC11(void *handle)
{
	struct amdgpu_ring *ring;

	int i, j, r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	for (j = 0; j < adev->uvd.num_uvd_inst; j++) {
		if (adev->uvd.harvest_config & (1 << j))
			continue;
		/* UVD TRAP */
		r = FUNC2(adev, amdgpu_ih_clientid_uvds[j], UVD_7_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, &adev->uvd.inst[j].irq);
		if (r)
			return r;

		/* UVD ENC TRAP */
		for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
			r = FUNC2(adev, amdgpu_ih_clientid_uvds[j], i + UVD_7_0__SRCID__UVD_ENC_GEN_PURP, &adev->uvd.inst[j].irq);
			if (r)
				return r;
		}
	}

	r = FUNC7(adev);
	if (r)
		return r;

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		const struct common_firmware_header *hdr;
		hdr = (const struct common_firmware_header *)adev->uvd.fw->data;
		adev->firmware.ucode[AMDGPU_UCODE_ID_UVD].ucode_id = AMDGPU_UCODE_ID_UVD;
		adev->firmware.ucode[AMDGPU_UCODE_ID_UVD].fw = adev->uvd.fw;
		adev->firmware.fw_size +=
			FUNC0(FUNC9(hdr->ucode_size_bytes), PAGE_SIZE);

		if (adev->uvd.num_uvd_inst == UVD7_MAX_HW_INSTANCES_VEGA20) {
			adev->firmware.ucode[AMDGPU_UCODE_ID_UVD1].ucode_id = AMDGPU_UCODE_ID_UVD1;
			adev->firmware.ucode[AMDGPU_UCODE_ID_UVD1].fw = adev->uvd.fw;
			adev->firmware.fw_size +=
				FUNC0(FUNC9(hdr->ucode_size_bytes), PAGE_SIZE);
		}
		FUNC1("PSP loading UVD firmware\n");
	}

	for (j = 0; j < adev->uvd.num_uvd_inst; j++) {
		if (adev->uvd.harvest_config & (1 << j))
			continue;
		if (!FUNC4(adev)) {
			ring = &adev->uvd.inst[j].ring;
			FUNC10(ring->name, "uvd_%d", ring->me);
			r = FUNC3(adev, ring, 512, &adev->uvd.inst[j].irq, 0);
			if (r)
				return r;
		}

		for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
			ring = &adev->uvd.inst[j].ring_enc[i];
			FUNC10(ring->name, "uvd_enc_%d.%d", ring->me, i);
			if (FUNC4(adev)) {
				ring->use_doorbell = true;

				/* currently only use the first enconding ring for
				 * sriov, so set unused location for other unused rings.
				 */
				if (i == 0)
					ring->doorbell_index = adev->doorbell_index.uvd_vce.uvd_ring0_1 * 2;
				else
					ring->doorbell_index = adev->doorbell_index.uvd_vce.uvd_ring2_3 * 2 + 1;
			}
			r = FUNC3(adev, ring, 512, &adev->uvd.inst[j].irq, 0);
			if (r)
				return r;
		}
	}

	r = FUNC6(adev);
	if (r)
		return r;

	r = FUNC5(adev);
	if (r)
		return r;

	r = FUNC8(adev);
	if (r)
		return r;

	return r;
}