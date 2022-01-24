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
typedef  int u64 ;
typedef  int u16 ;
struct skl_ddb_allocation {int enabled_slices; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int ddb_size; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 TYPE_2__* FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int const FUNC4 (struct drm_display_mode const*) ; 

__attribute__((used)) static u16 FUNC5(struct drm_i915_private *dev_priv,
			      const struct intel_crtc_state *crtc_state,
			      const u64 total_data_rate,
			      const int num_active,
			      struct skl_ddb_allocation *ddb)
{
	const struct drm_display_mode *adjusted_mode;
	u64 total_data_bw;
	u16 ddb_size = FUNC2(dev_priv)->ddb_size;

	FUNC3(ddb_size == 0);

	if (FUNC1(dev_priv) < 11)
		return ddb_size - 4; /* 4 blocks for bypass path allocation */

	adjusted_mode = &crtc_state->base.adjusted_mode;
	total_data_bw = total_data_rate * FUNC4(adjusted_mode);

	/*
	 * 12GB/s is maximum BW supported by single DBuf slice.
	 *
	 * FIXME dbuf slice code is broken:
	 * - must wait for planes to stop using the slice before powering it off
	 * - plane straddling both slices is illegal in multi-pipe scenarios
	 * - should validate we stay within the hw bandwidth limits
	 */
	if (0 && (num_active > 1 || total_data_bw >= FUNC0(12))) {
		ddb->enabled_slices = 2;
	} else {
		ddb->enabled_slices = 1;
		ddb_size /= 2;
	}

	return ddb_size;
}