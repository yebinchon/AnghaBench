#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct skl_wm_params {int dummy; } ;
struct skl_plane_wm {int /*<<< orphan*/  wm; } ;
struct intel_plane_state {int dummy; } ;
struct TYPE_4__ {struct skl_plane_wm* planes; } ;
struct TYPE_5__ {TYPE_1__ optimal; } ;
struct TYPE_6__ {TYPE_2__ skl; } ;
struct intel_crtc_state {TYPE_3__ wm; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;

/* Variables and functions */
 int FUNC0 (struct intel_crtc_state*,struct intel_plane_state const*,struct skl_wm_params*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state*,struct skl_wm_params*,struct skl_plane_wm*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*,struct skl_wm_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct intel_crtc_state *crtc_state,
				     const struct intel_plane_state *plane_state,
				     enum plane_id plane_id, int color_plane)
{
	struct skl_plane_wm *wm = &crtc_state->wm.skl.optimal.planes[plane_id];
	struct skl_wm_params wm_params;
	int ret;

	ret = FUNC0(crtc_state, plane_state,
					  &wm_params, color_plane);
	if (ret)
		return ret;

	FUNC2(crtc_state, &wm_params, wm->wm);
	FUNC1(crtc_state, &wm_params, wm);

	return 0;
}