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
struct TYPE_2__ {int use_event; int enabled; scalar_t__ wb; int /*<<< orphan*/ * wb_obj; int /*<<< orphan*/  gpu_addr; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_1__ wb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_PALM ; 
 scalar_t__ CHIP_R300 ; 
 scalar_t__ CHIP_R600 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  RADEON_GPU_PAGE_SIZE ; 
 int RADEON_IS_AGP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int radeon_no_wb ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct radeon_device *rdev)
{
	int r;

	if (rdev->wb.wb_obj == NULL) {
		r = FUNC3(rdev, RADEON_GPU_PAGE_SIZE, PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_GTT, 0, NULL, NULL,
				     &rdev->wb.wb_obj);
		if (r) {
			FUNC1(rdev->dev, "(%d) create WB bo failed\n", r);
			return r;
		}
		r = FUNC6(rdev->wb.wb_obj, false);
		if (FUNC9(r != 0)) {
			FUNC8(rdev);
			return r;
		}
		r = FUNC5(rdev->wb.wb_obj, RADEON_GEM_DOMAIN_GTT,
				&rdev->wb.gpu_addr);
		if (r) {
			FUNC7(rdev->wb.wb_obj);
			FUNC1(rdev->dev, "(%d) pin WB bo failed\n", r);
			FUNC8(rdev);
			return r;
		}
		r = FUNC4(rdev->wb.wb_obj, (void **)&rdev->wb.wb);
		FUNC7(rdev->wb.wb_obj);
		if (r) {
			FUNC1(rdev->dev, "(%d) map WB bo failed\n", r);
			FUNC8(rdev);
			return r;
		}
	}

	/* clear wb memory */
	FUNC2((char *)rdev->wb.wb, 0, RADEON_GPU_PAGE_SIZE);
	/* disable event_write fences */
	rdev->wb.use_event = false;
	/* disabled via module param */
	if (radeon_no_wb == 1) {
		rdev->wb.enabled = false;
	} else {
		if (rdev->flags & RADEON_IS_AGP) {
			/* often unreliable on AGP */
			rdev->wb.enabled = false;
		} else if (rdev->family < CHIP_R300) {
			/* often unreliable on pre-r300 */
			rdev->wb.enabled = false;
		} else {
			rdev->wb.enabled = true;
			/* event_write fences are only available on r600+ */
			if (rdev->family >= CHIP_R600) {
				rdev->wb.use_event = true;
			}
		}
	}
	/* always use writeback/events on NI, APUs */
	if (rdev->family >= CHIP_PALM) {
		rdev->wb.enabled = true;
		rdev->wb.use_event = true;
	}

	FUNC0(rdev->dev, "WB %sabled\n", rdev->wb.enabled ? "en" : "dis");

	return 0;
}