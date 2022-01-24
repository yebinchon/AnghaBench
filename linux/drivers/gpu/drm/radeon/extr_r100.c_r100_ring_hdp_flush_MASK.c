#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {int dummy; } ;
struct TYPE_3__ {int hdp_cntl; } ;
struct TYPE_4__ {TYPE_1__ r100; } ;
struct radeon_device {TYPE_2__ config; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RADEON_HDP_READ_BUFFER_INVALIDATE ; 
 int /*<<< orphan*/  RADEON_HOST_PATH_CNTL ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, struct radeon_ring *ring)
{
	FUNC1(ring, FUNC0(RADEON_HOST_PATH_CNTL, 0));
	FUNC1(ring, rdev->config.r100.hdp_cntl |
				RADEON_HDP_READ_BUFFER_INVALIDATE);
	FUNC1(ring, FUNC0(RADEON_HOST_PATH_CNTL, 0));
	FUNC1(ring, rdev->config.r100.hdp_cntl);
}