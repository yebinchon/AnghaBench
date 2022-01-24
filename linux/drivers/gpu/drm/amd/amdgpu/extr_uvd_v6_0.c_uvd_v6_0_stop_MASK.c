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
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mmUVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_CNTL ; 
 int /*<<< orphan*/  mmUVD_SOFT_RESET ; 
 int /*<<< orphan*/  mmUVD_STATUS ; 
 int /*<<< orphan*/  mmUVD_VCPU_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	/* force RBC into idle state */
	FUNC0(mmUVD_RBC_RB_CNTL, 0x11010101);

	/* Stall UMC and register bus before resetting VCPU */
	FUNC1(mmUVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
	FUNC2(1);

	/* put VCPU into reset */
	FUNC0(mmUVD_SOFT_RESET, UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
	FUNC2(5);

	/* disable VCPU clock */
	FUNC0(mmUVD_VCPU_CNTL, 0x0);

	/* Unstall UMC and register bus */
	FUNC1(mmUVD_LMI_CTRL2, 0, ~(1 << 8));

	FUNC0(mmUVD_STATUS, 0);
}