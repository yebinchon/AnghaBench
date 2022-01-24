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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS480_AGP_ADDRESS_SPACE_SIZE ; 
 int /*<<< orphan*/  RS690_AIC_CTRL_SCRATCH ; 
 int /*<<< orphan*/  RS690_DIS_OUT_OF_PCI_GART_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev)
{
	uint32_t tmp;

	tmp = FUNC0(RS690_AIC_CTRL_SCRATCH);
	tmp |= RS690_DIS_OUT_OF_PCI_GART_ACCESS;
	FUNC1(RS690_AIC_CTRL_SCRATCH, tmp);
	FUNC1(RS480_AGP_ADDRESS_SPACE_SIZE, 0);
}