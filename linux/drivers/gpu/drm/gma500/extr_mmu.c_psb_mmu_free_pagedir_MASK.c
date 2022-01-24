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
struct psb_mmu_pt {int dummy; } ;
struct psb_mmu_pd {int hw_context; int /*<<< orphan*/  p; int /*<<< orphan*/  dummy_pt; int /*<<< orphan*/  dummy_page; struct psb_mmu_pt** tables; struct psb_mmu_driver* driver; } ;
struct psb_mmu_driver {int /*<<< orphan*/  sem; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct psb_mmu_pd*) ; 
 int /*<<< orphan*/  FUNC4 (struct psb_mmu_driver*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct psb_mmu_pt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct psb_mmu_pt**) ; 

void FUNC8(struct psb_mmu_pd *pd)
{
	struct psb_mmu_driver *driver = pd->driver;
	struct drm_device *dev = driver->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct psb_mmu_pt *pt;
	int i;

	FUNC2(&driver->sem);
	if (pd->hw_context != -1) {
		FUNC0(0, PSB_CR_BIF_DIR_LIST_BASE0 + pd->hw_context * 4);
		FUNC4(driver, 1);
	}

	/* Should take the spinlock here, but we don't need to do that
	   since we have the semaphore in write mode. */

	for (i = 0; i < 1024; ++i) {
		pt = pd->tables[i];
		if (pt)
			FUNC5(pt);
	}

	FUNC7(pd->tables);
	FUNC1(pd->dummy_page);
	FUNC1(pd->dummy_pt);
	FUNC1(pd->p);
	FUNC3(pd);
	FUNC6(&driver->sem);
}