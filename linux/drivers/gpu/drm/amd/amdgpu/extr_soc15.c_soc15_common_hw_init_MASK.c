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
struct amdgpu_device {TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remap_hdp_registers ) (struct amdgpu_device*) ;int /*<<< orphan*/  (* init_registers ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* enable pcie gen2/3 link */
	FUNC2(adev);
	/* enable aspm */
	FUNC3(adev);
	/* setup nbio registers */
	adev->nbio_funcs->init_registers(adev);
	/* remap HDP registers to a hole in mmio space,
	 * for the purpose of expose those registers
	 * to process space
	 */
	if (adev->nbio_funcs->remap_hdp_registers)
		adev->nbio_funcs->remap_hdp_registers(adev);

	/* enable the doorbell aperture */
	FUNC1(adev, true);
	/* HW doorbell routing policy: doorbell writing not
	 * in SDMA/IH/MM/ACV range will be routed to CP. So
	 * we need to init SDMA/IH/MM/ACV doorbell range prior
	 * to CP ip block init and ring test.
	 */
	FUNC0(adev);

	return 0;
}