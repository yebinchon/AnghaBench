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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS ; 
 scalar_t__ INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA ; 
 scalar_t__ INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS ; 
 scalar_t__ INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS ; 

__attribute__((used)) static bool FUNC2(u32 scic)
{
	u32 func, subfunc;

	func = FUNC0(scic);
	subfunc = FUNC1(scic);

	if ((func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA &&
		subfunc == INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS)
		|| (func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA &&
		 subfunc == INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS)
		|| (func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS &&
		 subfunc == INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS)) {
		return true;
	}
	return false;
}