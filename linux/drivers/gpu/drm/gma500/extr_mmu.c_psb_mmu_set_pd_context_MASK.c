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
typedef  scalar_t__ uint32_t ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; int /*<<< orphan*/  p; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  sem; struct drm_device* dev; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE0 ; 
 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE1 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct psb_mmu_pd *pd, int hw_context)
{
	struct drm_device *dev = pd->driver->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	uint32_t offset = (hw_context == 0) ? PSB_CR_BIF_DIR_LIST_BASE0 :
			  PSB_CR_BIF_DIR_LIST_BASE1 + hw_context * 4;

	FUNC1(&pd->driver->sem);
	FUNC0(FUNC2(pd->p) << PAGE_SHIFT, offset);
	FUNC5();
	FUNC3(pd->driver, 1);
	pd->hw_context = hw_context;
	FUNC4(&pd->driver->sem);

}