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
struct radeon_device {int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ *) ; 

void FUNC2(struct radeon_device *rdev)
{
	/* halt the MEs */
	FUNC0(rdev, false);
	FUNC1(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX]);
	FUNC1(rdev, &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX]);
	/* XXX - compute dma queue tear down */
}