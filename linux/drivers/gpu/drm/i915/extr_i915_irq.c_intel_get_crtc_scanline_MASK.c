#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_2__ uncore; } ;

/* Variables and functions */
 int FUNC0 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC3(crtc->base.dev);
	unsigned long irqflags;
	int position;

	FUNC1(&dev_priv->uncore.lock, irqflags);
	position = FUNC0(crtc);
	FUNC2(&dev_priv->uncore.lock, irqflags);

	return position;
}