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
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_opregion {scalar_t__ header; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {struct intel_opregion opregion; struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPREGION_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC2(m->private);
	struct drm_device *dev = &dev_priv->drm;
	struct intel_opregion *opregion = &dev_priv->opregion;
	int ret;

	ret = FUNC0(&dev->struct_mutex);
	if (ret)
		goto out;

	if (opregion->header)
		FUNC3(m, opregion->header, OPREGION_SIZE);

	FUNC1(&dev->struct_mutex);

out:
	return 0;
}