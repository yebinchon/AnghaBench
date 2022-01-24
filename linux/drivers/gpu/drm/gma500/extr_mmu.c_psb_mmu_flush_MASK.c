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
typedef  int uint32_t ;
struct psb_mmu_driver {int /*<<< orphan*/  sem; int /*<<< orphan*/ * msvdx_mmu_invaldc; int /*<<< orphan*/  needs_tlbflush; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSB_CR_BIF_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int _PSB_CB_CTRL_FLUSH ; 
 int _PSB_CB_CTRL_INVALDC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct psb_mmu_driver *driver)
{
	struct drm_device *dev = driver->dev;
	struct drm_psb_private *dev_priv = dev->dev_private;
	uint32_t val;

	FUNC4(&driver->sem);
	val = FUNC0(PSB_CR_BIF_CTRL);
	if (FUNC2(&driver->needs_tlbflush))
		FUNC1(val | _PSB_CB_CTRL_INVALDC, PSB_CR_BIF_CTRL);
	else
		FUNC1(val | _PSB_CB_CTRL_FLUSH, PSB_CR_BIF_CTRL);

	/* Make sure data cache is turned off and MMU is flushed before
	   restoring bank interface control register */
	FUNC6();
	FUNC1(val & ~(_PSB_CB_CTRL_FLUSH | _PSB_CB_CTRL_INVALDC),
		   PSB_CR_BIF_CTRL);
	(void)FUNC0(PSB_CR_BIF_CTRL);

	FUNC3(&driver->needs_tlbflush, 0);
	if (driver->msvdx_mmu_invaldc)
		FUNC3(driver->msvdx_mmu_invaldc, 1);
	FUNC5(&driver->sem);
}