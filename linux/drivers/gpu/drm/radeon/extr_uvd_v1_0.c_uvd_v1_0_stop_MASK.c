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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  UVD_RBC_RB_CNTL ; 
 int /*<<< orphan*/  UVD_RB_ARB_CTRL ; 
 int /*<<< orphan*/  UVD_SOFT_RESET ; 
 int /*<<< orphan*/  UVD_VCPU_CNTL ; 
 int VCPU_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev)
{
	/* force RBC into idle state */
	FUNC0(UVD_RBC_RB_CNTL, 0x11010101);

	/* Stall UMC and register bus before resetting VCPU */
	FUNC1(UVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
	FUNC1(UVD_RB_ARB_CTRL, 1 << 3, ~(1 << 3));
	FUNC2(1);

	/* put VCPU into reset */
	FUNC0(UVD_SOFT_RESET, VCPU_SOFT_RESET);
	FUNC2(5);

	/* disable VCPU clock */
	FUNC0(UVD_VCPU_CNTL, 0x0);

	/* Unstall UMC and register bus */
	FUNC1(UVD_LMI_CTRL2, 0, ~(1 << 8));
	FUNC1(UVD_RB_ARB_CTRL, 0, ~(1 << 3));
}