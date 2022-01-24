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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VLV_GTLC_MEDIA_CTX_EXISTS ; 
 int VLV_GTLC_RENDER_CTX_EXISTS ; 
 int /*<<< orphan*/  VLV_GTLC_WAKE_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_private *dev_priv)
{
	u32 mask;
	int err;

	/*
	 * Bspec defines the following GT well on flags as debug only, so
	 * don't treat them as hard failures.
	 */
	FUNC6(dev_priv, false);

	mask = VLV_GTLC_RENDER_CTX_EXISTS | VLV_GTLC_MEDIA_CTX_EXISTS;
	FUNC1((FUNC0(VLV_GTLC_WAKE_CTRL) & mask) != mask);

	FUNC3(dev_priv);

	err = FUNC4(dev_priv, true);
	if (err)
		goto err1;

	err = FUNC2(dev_priv, false);
	if (err)
		goto err2;

	FUNC5(dev_priv);

	err = FUNC4(dev_priv, false);
	if (err)
		goto err2;

	return 0;

err2:
	/* For safety always re-enable waking and disable gfx clock forcing */
	FUNC2(dev_priv, true);
err1:
	FUNC4(dev_priv, false);

	return err;
}