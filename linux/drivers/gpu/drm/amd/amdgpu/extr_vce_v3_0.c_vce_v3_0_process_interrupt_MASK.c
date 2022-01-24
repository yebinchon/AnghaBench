#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_iv_entry {int* src_data; int /*<<< orphan*/  src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  VCE_SYS_INT_STATUS ; 
 int /*<<< orphan*/  VCE_SYS_INT_TRAP_INTERRUPT_INT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      struct amdgpu_iv_entry *entry)
{
	FUNC0("IH: VCE\n");

	FUNC2(VCE_SYS_INT_STATUS, VCE_SYS_INT_TRAP_INTERRUPT_INT, 1);

	switch (entry->src_data[0]) {
	case 0:
	case 1:
	case 2:
		FUNC3(&adev->vce.ring[entry->src_data[0]]);
		break;
	default:
		FUNC1("Unhandled interrupt: %d %d\n",
			  entry->src_id, entry->src_data[0]);
		break;
	}

	return 0;
}