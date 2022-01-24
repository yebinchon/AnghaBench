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
struct radeon_ring {int dummy; } ;
struct radeon_ib {size_t ring; int /*<<< orphan*/  length_dw; int /*<<< orphan*/  gpu_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_RBC_IB_BASE ; 
 int /*<<< orphan*/  UVD_RBC_IB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];

	FUNC1(ring, FUNC0(UVD_RBC_IB_BASE, 0));
	FUNC1(ring, ib->gpu_addr);
	FUNC1(ring, FUNC0(UVD_RBC_IB_SIZE, 0));
	FUNC1(ring, ib->length_dw);
}