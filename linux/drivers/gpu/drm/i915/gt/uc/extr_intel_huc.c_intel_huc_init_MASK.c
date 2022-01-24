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
struct intel_huc {int /*<<< orphan*/  fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC1 (struct intel_huc*) ; 
 int FUNC2 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct intel_huc *huc)
{
	struct drm_i915_private *i915 = FUNC1(huc)->i915;
	int err;

	err = FUNC5(&huc->fw);
	if (err)
		goto out;

	/*
	 * HuC firmware image is outside GuC accessible range.
	 * Copy the RSA signature out of the image into
	 * a perma-pinned region set aside for it
	 */
	err = FUNC2(huc);
	if (err)
		goto out_fini;

	return 0;

out_fini:
	FUNC4(&huc->fw);
out:
	FUNC3(&huc->fw);
	FUNC0(i915->drm.dev, "failed with %d\n", err);
	return err;
}