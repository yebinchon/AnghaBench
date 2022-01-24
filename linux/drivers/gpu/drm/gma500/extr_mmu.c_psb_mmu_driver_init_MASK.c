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
struct psb_mmu_driver {int bif_ctrl; int has_clflush; int clflush_add; int clflush_mask; int /*<<< orphan*/  sem; int /*<<< orphan*/ * msvdx_mmu_invaldc; int /*<<< orphan*/  needs_tlbflush; int /*<<< orphan*/  lock; int /*<<< orphan*/  default_pd; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PSB_CR_BIF_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int _PSB_CB_CTRL_CLEAR_FAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct psb_mmu_driver*) ; 
 struct psb_mmu_driver* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct psb_mmu_driver*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct psb_mmu_driver *FUNC12(struct drm_device *dev,
					   int trap_pagefaults,
					   int invalid_type,
					   atomic_t *msvdx_mmu_invaldc)
{
	struct psb_mmu_driver *driver;
	struct drm_psb_private *dev_priv = dev->dev_private;

	driver = FUNC8(sizeof(*driver), GFP_KERNEL);

	if (!driver)
		return NULL;

	driver->dev = dev;
	driver->default_pd = FUNC9(driver, trap_pagefaults,
					      invalid_type);
	if (!driver->default_pd)
		goto out_err1;

	FUNC10(&driver->lock);
	FUNC6(&driver->sem);
	FUNC5(&driver->sem);
	FUNC2(&driver->needs_tlbflush, 1);
	driver->msvdx_mmu_invaldc = msvdx_mmu_invaldc;

	driver->bif_ctrl = FUNC0(PSB_CR_BIF_CTRL);
	FUNC1(driver->bif_ctrl | _PSB_CB_CTRL_CLEAR_FAULT,
		   PSB_CR_BIF_CTRL);
	FUNC1(driver->bif_ctrl & ~_PSB_CB_CTRL_CLEAR_FAULT,
		   PSB_CR_BIF_CTRL);

	driver->has_clflush = 0;

#if defined(CONFIG_X86)
	if (boot_cpu_has(X86_FEATURE_CLFLUSH)) {
		uint32_t tfms, misc, cap0, cap4, clflush_size;

		/*
		 * clflush size is determined at kernel setup for x86_64 but not
		 * for i386. We have to do it here.
		 */

		cpuid(0x00000001, &tfms, &misc, &cap0, &cap4);
		clflush_size = ((misc >> 8) & 0xff) * 8;
		driver->has_clflush = 1;
		driver->clflush_add =
		    PAGE_SIZE * clflush_size / sizeof(uint32_t);
		driver->clflush_mask = driver->clflush_add - 1;
		driver->clflush_mask = ~driver->clflush_mask;
	}
#endif

	FUNC11(&driver->sem);
	return driver;

out_err1:
	FUNC7(driver);
	return NULL;
}