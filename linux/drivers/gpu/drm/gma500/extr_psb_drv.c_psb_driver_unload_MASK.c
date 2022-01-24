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
struct psb_gtt {int /*<<< orphan*/  sem; int /*<<< orphan*/  mmu_gatt_start; } ;
struct drm_psb_private {int vram_stolen_size; int /*<<< orphan*/  lpc_pdev; int /*<<< orphan*/  aux_pdev; int /*<<< orphan*/ * aux_reg; int /*<<< orphan*/ * sgx_reg; int /*<<< orphan*/ * vdc_reg; int /*<<< orphan*/ * scratch_page; int /*<<< orphan*/ * mmu; struct psb_gtt gtt; int /*<<< orphan*/ * pf_pd; TYPE_1__* ops; scalar_t__ backlight_device; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_teardown ) (struct drm_device*) ;} ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_psb_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;

	/* TODO: Kill vblank etc here */

	if (dev_priv) {
		if (dev_priv->backlight_device)
			FUNC2(dev);
		FUNC14(dev);

		if (dev_priv->ops->chip_teardown)
			dev_priv->ops->chip_teardown(dev);

		FUNC9(dev);

		if (dev_priv->pf_pd) {
			FUNC11(dev_priv->pf_pd);
			dev_priv->pf_pd = NULL;
		}
		if (dev_priv->mmu) {
			struct psb_gtt *pg = &dev_priv->gtt;

			FUNC1(&pg->sem);
			FUNC13(
				FUNC12
				(dev_priv->mmu),
				pg->mmu_gatt_start,
				dev_priv->vram_stolen_size >> PAGE_SHIFT);
			FUNC17(&pg->sem);
			FUNC10(dev_priv->mmu);
			dev_priv->mmu = NULL;
		}
		FUNC7(dev);
		if (dev_priv->scratch_page) {
			FUNC15(dev_priv->scratch_page, 1);
			FUNC0(dev_priv->scratch_page);
			dev_priv->scratch_page = NULL;
		}
		if (dev_priv->vdc_reg) {
			FUNC4(dev_priv->vdc_reg);
			dev_priv->vdc_reg = NULL;
		}
		if (dev_priv->sgx_reg) {
			FUNC4(dev_priv->sgx_reg);
			dev_priv->sgx_reg = NULL;
		}
		if (dev_priv->aux_reg) {
			FUNC4(dev_priv->aux_reg);
			dev_priv->aux_reg = NULL;
		}
		FUNC6(dev_priv->aux_pdev);
		FUNC6(dev_priv->lpc_pdev);

		/* Destroy VBT data */
		FUNC8(dev);

		FUNC5(dev_priv);
		dev->dev_private = NULL;
	}
	FUNC3(dev);
}