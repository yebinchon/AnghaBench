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
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	FUNC0(rdev, false);
	FUNC1(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
}