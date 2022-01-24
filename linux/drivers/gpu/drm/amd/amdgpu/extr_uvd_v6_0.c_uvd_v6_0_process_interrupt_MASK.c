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
struct amdgpu_iv_entry {int src_id; int /*<<< orphan*/ * src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring_enc; int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      struct amdgpu_iv_entry *entry)
{
	bool int_handled = true;
	FUNC0("IH: UVD TRAP\n");

	switch (entry->src_id) {
	case 124:
		FUNC2(&adev->uvd.inst->ring);
		break;
	case 119:
		if (FUNC3(FUNC4(adev)))
			FUNC2(&adev->uvd.inst->ring_enc[0]);
		else
			int_handled = false;
		break;
	case 120:
		if (FUNC3(FUNC4(adev)))
			FUNC2(&adev->uvd.inst->ring_enc[1]);
		else
			int_handled = false;
		break;
	}

	if (false == int_handled)
			FUNC1("Unhandled interrupt: %d %d\n",
			  entry->src_id, entry->src_data[0]);

	return 0;
}