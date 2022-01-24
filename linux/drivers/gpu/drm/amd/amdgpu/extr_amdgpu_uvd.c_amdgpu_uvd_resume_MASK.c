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
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct TYPE_8__ {int num_uvd_inst; int harvest_config; TYPE_3__* inst; TYPE_2__* fw; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_4__ uvd; TYPE_1__ firmware; } ;
struct TYPE_7__ {void* cpu_addr; int /*<<< orphan*/  ring; int /*<<< orphan*/ * saved_bo; int /*<<< orphan*/ * vcpu_bo; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(struct amdgpu_device *adev)
{
	unsigned size;
	void *ptr;
	int i;

	for (i = 0; i < adev->uvd.num_uvd_inst; i++) {
		if (adev->uvd.harvest_config & (1 << i))
			continue;
		if (adev->uvd.inst[i].vcpu_bo == NULL)
			return -EINVAL;

		size = FUNC0(adev->uvd.inst[i].vcpu_bo);
		ptr = adev->uvd.inst[i].cpu_addr;

		if (adev->uvd.inst[i].saved_bo != NULL) {
			FUNC4(ptr, adev->uvd.inst[i].saved_bo, size);
			FUNC2(adev->uvd.inst[i].saved_bo);
			adev->uvd.inst[i].saved_bo = NULL;
		} else {
			const struct common_firmware_header *hdr;
			unsigned offset;

			hdr = (const struct common_firmware_header *)adev->uvd.fw->data;
			if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
				offset = FUNC3(hdr->ucode_array_offset_bytes);
				FUNC4(adev->uvd.inst[i].cpu_addr, adev->uvd.fw->data + offset,
					    FUNC3(hdr->ucode_size_bytes));
				size -= FUNC3(hdr->ucode_size_bytes);
				ptr += FUNC3(hdr->ucode_size_bytes);
			}
			FUNC5(ptr, 0, size);
			/* to restore uvd fence seq */
			FUNC1(&adev->uvd.inst[i].ring);
		}
	}
	return 0;
}