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
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*,struct intel_vgpu*,int) ; 

void FUNC5(struct intel_vgpu *pre,
			   struct intel_vgpu *next, int ring_id)
{
	struct drm_i915_private *dev_priv;

	if (FUNC0(!pre && !next))
		return;

	FUNC1("switch ring %d from %s to %s\n", ring_id,
		       pre ? "vGPU" : "host", next ? "vGPU" : "HOST");

	dev_priv = pre ? pre->gvt->dev_priv : next->gvt->dev_priv;

	/**
	 * We are using raw mmio access wrapper to improve the
	 * performace for batch mmio read/write, so we need
	 * handle forcewake mannually.
	 */
	FUNC2(&dev_priv->uncore, FORCEWAKE_ALL);
	FUNC4(pre, next, ring_id);
	FUNC3(&dev_priv->uncore, FORCEWAKE_ALL);
}