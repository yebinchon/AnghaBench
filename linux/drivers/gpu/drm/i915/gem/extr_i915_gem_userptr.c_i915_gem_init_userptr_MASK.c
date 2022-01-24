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
struct TYPE_2__ {int /*<<< orphan*/  userptr_wq; } ;
struct drm_i915_private {TYPE_1__ mm; int /*<<< orphan*/  mm_structs; int /*<<< orphan*/  mm_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int WQ_HIGHPRI ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_i915_private *dev_priv)
{
	FUNC2(&dev_priv->mm_lock);
	FUNC1(dev_priv->mm_structs);

	dev_priv->mm.userptr_wq =
		FUNC0("i915-userptr-acquire",
				WQ_HIGHPRI | WQ_UNBOUND,
				0);
	if (!dev_priv->mm.userptr_wq)
		return -ENOMEM;

	return 0;
}