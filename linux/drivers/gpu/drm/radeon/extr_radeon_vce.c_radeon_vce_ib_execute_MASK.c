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
 int /*<<< orphan*/  VCE_CMD_IB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	FUNC1(ring, FUNC0(VCE_CMD_IB));
	FUNC1(ring, FUNC0(ib->gpu_addr));
	FUNC1(ring, FUNC0(FUNC2(ib->gpu_addr)));
	FUNC1(ring, FUNC0(ib->length_dw));
}