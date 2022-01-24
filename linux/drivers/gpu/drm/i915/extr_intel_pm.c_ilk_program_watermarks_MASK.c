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
struct intel_wm_config {int num_pipes_active; scalar_t__ sprites_enabled; } ;
struct intel_pipe_wm {int dummy; } ;
struct ilk_wm_values {int dummy; } ;
struct ilk_wm_maximums {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum intel_ddb_partitioning { ____Placeholder_intel_ddb_partitioning } intel_ddb_partitioning ;

/* Variables and functions */
 int INTEL_DDB_PART_1_2 ; 
 int INTEL_DDB_PART_5_6 ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct intel_wm_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,struct intel_wm_config*,int,struct ilk_wm_maximums*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,struct intel_pipe_wm*,int,struct ilk_wm_values*) ; 
 struct intel_pipe_wm* FUNC4 (struct drm_i915_private*,struct intel_pipe_wm*,struct intel_pipe_wm*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_wm_config*,struct ilk_wm_maximums*,struct intel_pipe_wm*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct ilk_wm_values*) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv)
{
	struct intel_pipe_wm lp_wm_1_2 = {}, lp_wm_5_6 = {}, *best_lp_wm;
	struct ilk_wm_maximums max;
	struct intel_wm_config config = {};
	struct ilk_wm_values results = {};
	enum intel_ddb_partitioning partitioning;

	FUNC1(dev_priv, &config);

	FUNC2(dev_priv, 1, &config, INTEL_DDB_PART_1_2, &max);
	FUNC5(dev_priv, &config, &max, &lp_wm_1_2);

	/* 5/6 split only in single pipe config on IVB+ */
	if (FUNC0(dev_priv) >= 7 &&
	    config.num_pipes_active == 1 && config.sprites_enabled) {
		FUNC2(dev_priv, 1, &config, INTEL_DDB_PART_5_6, &max);
		FUNC5(dev_priv, &config, &max, &lp_wm_5_6);

		best_lp_wm = FUNC4(dev_priv, &lp_wm_1_2, &lp_wm_5_6);
	} else {
		best_lp_wm = &lp_wm_1_2;
	}

	partitioning = (best_lp_wm == &lp_wm_1_2) ?
		       INTEL_DDB_PART_1_2 : INTEL_DDB_PART_5_6;

	FUNC3(dev_priv, best_lp_wm, partitioning, &results);

	FUNC6(dev_priv, &results);
}