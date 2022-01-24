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
struct seq_file {int /*<<< orphan*/  private; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_2__ {int /*<<< orphan*/  enable_ips; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  IPS_CTL ; 
 int IPS_ENABLE ; 
 TYPE_1__ i915_modparams ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC5(m->private);
	intel_wakeref_t wakeref;

	if (!FUNC0(dev_priv))
		return -ENODEV;

	wakeref = FUNC3(&dev_priv->runtime_pm);

	FUNC6(m, "Enabled by kernel parameter: %s\n",
		   FUNC8(i915_modparams.enable_ips));

	if (FUNC2(dev_priv) >= 8) {
		FUNC7(m, "Currently: unknown\n");
	} else {
		if (FUNC1(IPS_CTL) & IPS_ENABLE)
			FUNC7(m, "Currently: enabled\n");
		else
			FUNC7(m, "Currently: disabled\n");
	}

	FUNC4(&dev_priv->runtime_pm, wakeref);

	return 0;
}