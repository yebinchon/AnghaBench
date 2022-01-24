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
struct seq_file {struct drm_i915_private* private; } ;
struct i915_hotplug {int /*<<< orphan*/  reenable_work; int /*<<< orphan*/  hpd_storm_threshold; int /*<<< orphan*/  hotplug_work; int /*<<< orphan*/  dig_port_work; } ;
struct drm_i915_private {struct i915_hotplug hotplug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = m->private;
	struct i915_hotplug *hotplug = &dev_priv->hotplug;

	/* Synchronize with everything first in case there's been an HPD
	 * storm, but we haven't finished handling it in the kernel yet
	 */
	FUNC3(dev_priv);
	FUNC2(&dev_priv->hotplug.dig_port_work);
	FUNC1(&dev_priv->hotplug.hotplug_work);

	FUNC4(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
	FUNC4(m, "Detected: %s\n",
		   FUNC5(FUNC0(&hotplug->reenable_work)));

	return 0;
}