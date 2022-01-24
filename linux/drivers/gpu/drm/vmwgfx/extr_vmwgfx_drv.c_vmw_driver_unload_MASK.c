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
struct TYPE_2__ {scalar_t__ staged_bindings; int /*<<< orphan*/  cmd_bounce; int /*<<< orphan*/  res_ht; scalar_t__ res_ht_initialized; } ;
struct vmw_private {int capabilities; int /*<<< orphan*/ * res_idr; TYPE_1__ ctx; int /*<<< orphan*/  mmio_virt; int /*<<< orphan*/  tdev; scalar_t__ stealth; int /*<<< orphan*/  dev; int /*<<< orphan*/  fman; int /*<<< orphan*/  bdev; scalar_t__ has_mob; scalar_t__ has_gmr; scalar_t__ enable_fb; int /*<<< orphan*/  pm_nb; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;
typedef  enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;

/* Variables and functions */
 int SVGA_CAP_IRQMASK ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  VMW_PL_GMR ; 
 int /*<<< orphan*/  VMW_PL_MOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct vmw_private*) ; 
 struct vmw_private* FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct vmw_private*) ; 
 int vmw_res_context ; 
 int vmw_res_max ; 
 int /*<<< orphan*/  FUNC22 (struct vmw_private*) ; 

__attribute__((used)) static void FUNC23(struct drm_device *dev)
{
	struct vmw_private *dev_priv = FUNC19(dev);
	enum vmw_res_type i;

	FUNC9(&dev_priv->pm_nb);

	if (dev_priv->ctx.res_ht_initialized)
		FUNC0(&dev_priv->ctx.res_ht);
	FUNC10(dev_priv->ctx.cmd_bounce);
	if (dev_priv->enable_fb) {
		FUNC13(dev_priv);
		FUNC12(dev_priv);
		FUNC15(dev_priv);
		FUNC22(dev_priv);
	}

	FUNC17(dev_priv);
	FUNC18(dev_priv);

	if (dev_priv->has_gmr)
		(void)FUNC6(&dev_priv->bdev, VMW_PL_GMR);
	(void)FUNC6(&dev_priv->bdev, TTM_PL_VRAM);

	FUNC20(dev_priv);
	if (dev_priv->has_mob)
		(void) FUNC6(&dev_priv->bdev, VMW_PL_MOB);
	(void) FUNC7(&dev_priv->bdev);
	FUNC21(dev_priv);
	FUNC14(dev_priv->fman);
	if (dev_priv->capabilities & SVGA_CAP_IRQMASK)
		FUNC16(dev_priv->dev);
	if (dev_priv->stealth)
		FUNC4(dev->pdev, 2);
	else
		FUNC5(dev->pdev);

	FUNC8(&dev_priv->tdev);
	FUNC3(dev_priv->mmio_virt);
	if (dev_priv->ctx.staged_bindings)
		FUNC11(dev_priv->ctx.staged_bindings);

	for (i = vmw_res_context; i < vmw_res_max; ++i)
		FUNC1(&dev_priv->res_idr[i]);

	FUNC2(dev_priv);
}