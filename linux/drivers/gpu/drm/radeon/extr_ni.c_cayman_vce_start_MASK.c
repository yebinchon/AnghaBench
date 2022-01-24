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
struct radeon_device {TYPE_1__* ring; int /*<<< orphan*/  dev; int /*<<< orphan*/  has_vce; } ;
struct TYPE_2__ {scalar_t__ ring_size; } ;

/* Variables and functions */
 size_t TN_RING_TYPE_VCE1_INDEX ; 
 size_t TN_RING_TYPE_VCE2_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct radeon_device*,size_t) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev)
{
	int r;

	if (!rdev->has_vce)
		return;

	r = FUNC2(rdev);
	if (r) {
		FUNC0(rdev->dev, "failed VCE resume (%d).\n", r);
		goto error;
	}
	r = FUNC3(rdev);
	if (r) {
		FUNC0(rdev->dev, "failed VCE resume (%d).\n", r);
		goto error;
	}
	r = FUNC1(rdev, TN_RING_TYPE_VCE1_INDEX);
	if (r) {
		FUNC0(rdev->dev, "failed initializing VCE1 fences (%d).\n", r);
		goto error;
	}
	r = FUNC1(rdev, TN_RING_TYPE_VCE2_INDEX);
	if (r) {
		FUNC0(rdev->dev, "failed initializing VCE2 fences (%d).\n", r);
		goto error;
	}
	return;

error:
	rdev->ring[TN_RING_TYPE_VCE1_INDEX].ring_size = 0;
	rdev->ring[TN_RING_TYPE_VCE2_INDEX].ring_size = 0;
}