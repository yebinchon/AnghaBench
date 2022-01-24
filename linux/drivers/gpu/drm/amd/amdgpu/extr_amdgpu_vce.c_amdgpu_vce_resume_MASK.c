#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct common_firmware_header {int /*<<< orphan*/  ucode_array_offset_bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vcpu_bo; TYPE_1__* fw; } ;
struct amdgpu_device {TYPE_2__ vce; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__,scalar_t__) ; 

int FUNC7(struct amdgpu_device *adev)
{
	void *cpu_addr;
	const struct common_firmware_header *hdr;
	unsigned offset;
	int r;

	if (adev->vce.vcpu_bo == NULL)
		return -EINVAL;

	r = FUNC2(adev->vce.vcpu_bo, false);
	if (r) {
		FUNC4(adev->dev, "(%d) failed to reserve VCE bo\n", r);
		return r;
	}

	r = FUNC0(adev->vce.vcpu_bo, &cpu_addr);
	if (r) {
		FUNC3(adev->vce.vcpu_bo);
		FUNC4(adev->dev, "(%d) VCE map failed\n", r);
		return r;
	}

	hdr = (const struct common_firmware_header *)adev->vce.fw->data;
	offset = FUNC5(hdr->ucode_array_offset_bytes);
	FUNC6(cpu_addr, adev->vce.fw->data + offset,
		    adev->vce.fw->size - offset);

	FUNC1(adev->vce.vcpu_bo);

	FUNC3(adev->vce.vcpu_bo);

	return 0;
}