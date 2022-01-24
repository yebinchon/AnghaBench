#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hdp_cntl; } ;
struct TYPE_6__ {TYPE_2__ r300; } ;
struct TYPE_4__ {int /*<<< orphan*/  installed; } ;
struct radeon_device {int flags; int /*<<< orphan*/  dev; TYPE_3__ config; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_HOST_PATH_CNTL ; 
 int RADEON_IS_PCIE ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct radeon_device*,int) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev)
{
	int r;

	FUNC11(rdev);
	/* Resume clock */
	FUNC9(rdev);
	/* Initialize GPU configuration (# pipes, ...) */
	FUNC10(rdev);
	/* Initialize GART (initialize after TTM so we can allocate
	 * memory through TTM but finalize after TTM) */
	if (rdev->flags & RADEON_IS_PCIE) {
		r = FUNC8(rdev);
		if (r)
			return r;
	}

	/* allocate wb buffer */
	r = FUNC6(rdev);
	if (r)
		return r;

	r = FUNC3(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC1(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC5(rdev);
		if (r)
			return r;
	}

	FUNC7(rdev);
	rdev->config.r300.hdp_cntl = FUNC0(RADEON_HOST_PATH_CNTL);
	/* 1M ring buffer */
	r = FUNC2(rdev, 1024 * 1024);
	if (r) {
		FUNC1(rdev->dev, "failed initializing CP (%d).\n", r);
		return r;
	}

	r = FUNC4(rdev);
	if (r) {
		FUNC1(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	return 0;
}