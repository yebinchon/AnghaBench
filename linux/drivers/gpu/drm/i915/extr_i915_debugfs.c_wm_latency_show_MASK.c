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
typedef  unsigned int u16 ;
struct seq_file {struct drm_i915_private* private; } ;
struct drm_device {int dummy; } ;
struct drm_i915_private {struct drm_device drm; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int,unsigned int const,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct seq_file *m, const u16 wm[8])
{
	struct drm_i915_private *dev_priv = m->private;
	struct drm_device *dev = &dev_priv->drm;
	int level;
	int num_levels;

	if (FUNC1(dev_priv))
		num_levels = 3;
	else if (FUNC3(dev_priv))
		num_levels = 1;
	else if (FUNC2(dev_priv))
		num_levels = 3;
	else
		num_levels = FUNC6(dev_priv) + 1;

	FUNC4(dev);

	for (level = 0; level < num_levels; level++) {
		unsigned int latency = wm[level];

		/*
		 * - WM1+ latency values in 0.5us units
		 * - latencies are in us on gen9/vlv/chv
		 */
		if (FUNC0(dev_priv) >= 9 ||
		    FUNC3(dev_priv) ||
		    FUNC1(dev_priv) ||
		    FUNC2(dev_priv))
			latency *= 10;
		else if (level > 0)
			latency *= 5;

		FUNC7(m, "WM%d %u (%u.%u usec)\n",
			   level, wm[level], latency / 10, latency % 10);
	}

	FUNC5(dev);
}