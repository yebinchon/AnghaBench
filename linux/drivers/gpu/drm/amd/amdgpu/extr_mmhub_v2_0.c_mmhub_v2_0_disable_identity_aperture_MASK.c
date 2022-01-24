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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMHUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_HI32 ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_LO32 ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_HI32 ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_LO32 ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_HI32 ; 
 int /*<<< orphan*/  mmMMVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_LO32 ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev)
{
	FUNC0(MMHUB, 0,
		     mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_LO32,
		     0xFFFFFFFF);
	FUNC0(MMHUB, 0,
		     mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR_HI32,
		     0x0000000F);

	FUNC0(MMHUB, 0,
		     mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_LO32, 0);
	FUNC0(MMHUB, 0,
		     mmMMVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR_HI32, 0);

	FUNC0(MMHUB, 0, mmMMVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_LO32,
		     0);
	FUNC0(MMHUB, 0, mmMMVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET_HI32,
		     0);
}