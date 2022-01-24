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
struct TYPE_2__ {int /*<<< orphan*/  write_fw_domains; int /*<<< orphan*/  read_fw_domains; int /*<<< orphan*/  force_wake_put; int /*<<< orphan*/  force_wake_get; } ;
struct intel_uncore {int /*<<< orphan*/  flags; TYPE_1__ funcs; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  UNCORE_HAS_DBG_UNCLAIMED ; 
 int /*<<< orphan*/  UNCORE_HAS_FIFO ; 
 int /*<<< orphan*/  UNCORE_HAS_FORCEWAKE ; 
 int /*<<< orphan*/  UNCORE_HAS_FPGA_DBG_UNCLAIMED ; 
 int FUNC7 (struct intel_uncore*) ; 
 scalar_t__ FUNC8 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int FUNC10 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_uncore*) ; 
 int FUNC12 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_uncore*) ; 

int FUNC14(struct intel_uncore *uncore)
{
	struct drm_i915_private *i915 = uncore->i915;
	int ret;

	ret = FUNC12(uncore);
	if (ret)
		return ret;

	if (FUNC3(i915) > 5 && !FUNC9(i915))
		uncore->flags |= UNCORE_HAS_FORCEWAKE;

	if (!FUNC7(uncore)) {
		FUNC13(uncore);
	} else {
		ret = FUNC10(uncore);
		if (ret)
			goto out_mmio_cleanup;
	}

	/* make sure fw funcs are set if and only if we have fw*/
	FUNC1(FUNC7(uncore) != !!uncore->funcs.force_wake_get);
	FUNC1(FUNC7(uncore) != !!uncore->funcs.force_wake_put);
	FUNC1(FUNC7(uncore) != !!uncore->funcs.read_fw_domains);
	FUNC1(FUNC7(uncore) != !!uncore->funcs.write_fw_domains);

	if (FUNC2(i915))
		uncore->flags |= UNCORE_HAS_FPGA_DBG_UNCLAIMED;

	if (FUNC6(i915) || FUNC4(i915))
		uncore->flags |= UNCORE_HAS_DBG_UNCLAIMED;

	if (FUNC5(i915, 6, 7))
		uncore->flags |= UNCORE_HAS_FIFO;

	/* clear out unclaimed reg detection bit */
	if (FUNC8(uncore))
		FUNC0("unclaimed mmio detected on uncore init, clearing\n");

	return 0;

out_mmio_cleanup:
	FUNC11(uncore);

	return ret;
}