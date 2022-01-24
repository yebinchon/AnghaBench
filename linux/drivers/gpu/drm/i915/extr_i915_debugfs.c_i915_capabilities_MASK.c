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
struct intel_device_info {int /*<<< orphan*/  platform; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 struct intel_device_info* FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct drm_printer FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  i915_modparams ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_device_info const*,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = FUNC12(m->private);
	const struct intel_device_info *info = FUNC1(dev_priv);
	struct drm_printer p = FUNC4(m);

	FUNC13(m, "gen: %d\n", FUNC0(dev_priv));
	FUNC13(m, "platform: %s\n", FUNC9(info->platform));
	FUNC13(m, "pch: %d\n", FUNC2(dev_priv));

	FUNC6(info, &p);
	FUNC7(FUNC3(dev_priv), &p);
	FUNC8(&dev_priv->caps, &p);

	FUNC10(THIS_MODULE);
	FUNC5(&i915_modparams, &p);
	FUNC11(THIS_MODULE);

	return 0;
}