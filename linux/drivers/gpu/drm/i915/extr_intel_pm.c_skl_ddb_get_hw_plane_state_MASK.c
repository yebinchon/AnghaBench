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
struct skl_ddb_entry {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int const,int const) ; 
 int PLANE_CTL_ALPHA_MASK ; 
 int PLANE_CTL_ENABLE ; 
 int PLANE_CTL_FORMAT_MASK ; 
 int PLANE_CTL_ORDER_RGBX ; 
 int const PLANE_CURSOR ; 
 int /*<<< orphan*/  FUNC5 (int const,int const) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,struct skl_ddb_entry*,int) ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void
FUNC10(struct drm_i915_private *dev_priv,
			   const enum pipe pipe,
			   const enum plane_id plane_id,
			   struct skl_ddb_entry *ddb_y,
			   struct skl_ddb_entry *ddb_uv)
{
	u32 val, val2;
	u32 fourcc = 0;

	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
	if (plane_id == PLANE_CURSOR) {
		val = FUNC1(FUNC0(pipe));
		FUNC7(dev_priv, ddb_y, val);
		return;
	}

	val = FUNC1(FUNC4(pipe, plane_id));

	/* No DDB allocated for disabled planes */
	if (val & PLANE_CTL_ENABLE)
		fourcc = FUNC8(val & PLANE_CTL_FORMAT_MASK,
					      val & PLANE_CTL_ORDER_RGBX,
					      val & PLANE_CTL_ALPHA_MASK);

	if (FUNC2(dev_priv) >= 11) {
		val = FUNC1(FUNC3(pipe, plane_id));
		FUNC7(dev_priv, ddb_y, val);
	} else {
		val = FUNC1(FUNC3(pipe, plane_id));
		val2 = FUNC1(FUNC5(pipe, plane_id));

		if (FUNC6(fourcc))
			FUNC9(val, val2);

		FUNC7(dev_priv, ddb_y, val);
		FUNC7(dev_priv, ddb_uv, val2);
	}
}