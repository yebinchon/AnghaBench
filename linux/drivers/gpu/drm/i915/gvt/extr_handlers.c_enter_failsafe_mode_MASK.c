#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_vgpu {int failsafe; int /*<<< orphan*/  id; } ;

/* Variables and functions */
#define  GVT_FAILSAFE_GUEST_ERR 130 
#define  GVT_FAILSAFE_INSUFFICIENT_RESOURCE 129 
#define  GVT_FAILSAFE_UNSUPPORTED_GUEST 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct intel_vgpu *vgpu, int reason)
{
	switch (reason) {
	case GVT_FAILSAFE_UNSUPPORTED_GUEST:
		FUNC0("Detected your guest driver doesn't support GVT-g.\n");
		break;
	case GVT_FAILSAFE_INSUFFICIENT_RESOURCE:
		FUNC0("Graphics resource is not enough for the guest\n");
		break;
	case GVT_FAILSAFE_GUEST_ERR:
		FUNC0("GVT Internal error  for the guest\n");
		break;
	default:
		break;
	}
	FUNC0("Now vgpu %d will enter failsafe mode.\n", vgpu->id);
	vgpu->failsafe = true;
}