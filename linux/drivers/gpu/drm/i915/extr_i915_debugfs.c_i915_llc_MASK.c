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
struct drm_i915_private {int /*<<< orphan*/  edram_size_mb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = FUNC2(m->private);
	const bool edram = FUNC1(dev_priv) > 8;

	FUNC3(m, "LLC: %s\n", FUNC4(FUNC0(dev_priv)));
	FUNC3(m, "%s: %uMB\n", edram ? "eDRAM" : "eLLC",
		   dev_priv->edram_size_mb);

	return 0;
}