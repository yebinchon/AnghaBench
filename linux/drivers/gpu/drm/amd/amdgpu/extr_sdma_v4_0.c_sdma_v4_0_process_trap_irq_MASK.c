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
typedef  size_t uint32_t ;
struct amdgpu_iv_entry {int ring_id; int /*<<< orphan*/  client_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_3__ {TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_1__ sdma; int /*<<< orphan*/  asic_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  page; int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_VEGA20 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      struct amdgpu_iv_entry *entry)
{
	uint32_t instance;

	FUNC0("IH: SDMA trap\n");
	instance = FUNC2(entry->client_id);
	switch (entry->ring_id) {
	case 0:
		FUNC1(&adev->sdma.instance[instance].ring);
		break;
	case 1:
		if (adev->asic_type == CHIP_VEGA20)
			FUNC1(&adev->sdma.instance[instance].page);
		break;
	case 2:
		/* XXX compute */
		break;
	case 3:
		if (adev->asic_type != CHIP_VEGA20)
			FUNC1(&adev->sdma.instance[instance].page);
		break;
	}
	return 0;
}