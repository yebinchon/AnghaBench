#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct skl_plane_wm {scalar_t__ is_planar; int /*<<< orphan*/  trans_wm; int /*<<< orphan*/ * wm; } ;
struct skl_ddb_entry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int id; int pipe; TYPE_1__ base; } ;
struct TYPE_6__ {struct skl_plane_wm* planes; } ;
struct TYPE_7__ {struct skl_ddb_entry* plane_ddb_uv; struct skl_ddb_entry* plane_ddb_y; TYPE_2__ optimal; } ;
struct TYPE_8__ {TYPE_3__ skl; } ;
struct intel_crtc_state {TYPE_4__ wm; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,struct skl_ddb_entry const*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct skl_ddb_entry const*,struct skl_ddb_entry const*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct intel_plane *plane,
			const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC9(plane->base.dev);
	int level, max_level = FUNC5(dev_priv);
	enum plane_id plane_id = plane->id;
	enum pipe pipe = plane->pipe;
	const struct skl_plane_wm *wm =
		&crtc_state->wm.skl.optimal.planes[plane_id];
	const struct skl_ddb_entry *ddb_y =
		&crtc_state->wm.skl.plane_ddb_y[plane_id];
	const struct skl_ddb_entry *ddb_uv =
		&crtc_state->wm.skl.plane_ddb_uv[plane_id];

	for (level = 0; level <= max_level; level++) {
		FUNC7(dev_priv, FUNC3(pipe, plane_id, level),
				   &wm->wm[level]);
	}
	FUNC7(dev_priv, FUNC4(pipe, plane_id),
			   &wm->trans_wm);

	if (FUNC0(dev_priv) >= 11) {
		FUNC6(dev_priv,
				    FUNC1(pipe, plane_id), ddb_y);
		return;
	}

	if (wm->is_planar)
		FUNC8(ddb_y, ddb_uv);

	FUNC6(dev_priv,
			    FUNC1(pipe, plane_id), ddb_y);
	FUNC6(dev_priv,
			    FUNC2(pipe, plane_id), ddb_uv);
}