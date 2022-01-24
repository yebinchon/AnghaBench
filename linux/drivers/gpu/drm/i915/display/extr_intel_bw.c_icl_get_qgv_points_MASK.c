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
struct intel_qgv_point {int /*<<< orphan*/  t_rc; int /*<<< orphan*/  t_rcd; int /*<<< orphan*/  t_ras; int /*<<< orphan*/  t_rdpre; int /*<<< orphan*/  t_rp; int /*<<< orphan*/  dclk; } ;
struct intel_qgv_info {int num_points; struct intel_qgv_point* points; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_qgv_point*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*,struct intel_qgv_info*) ; 
 int FUNC4 (struct drm_i915_private*,struct intel_qgv_point*,int) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_private *dev_priv,
			      struct intel_qgv_info *qi)
{
	int i, ret;

	ret = FUNC3(dev_priv, qi);
	if (ret)
		return ret;

	if (FUNC2(qi->num_points > FUNC0(qi->points)))
		qi->num_points = FUNC0(qi->points);

	for (i = 0; i < qi->num_points; i++) {
		struct intel_qgv_point *sp = &qi->points[i];

		ret = FUNC4(dev_priv, sp, i);
		if (ret)
			return ret;

		FUNC1("QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\n",
			      i, sp->dclk, sp->t_rp, sp->t_rdpre, sp->t_ras,
			      sp->t_rcd, sp->t_rc);
	}

	return 0;
}