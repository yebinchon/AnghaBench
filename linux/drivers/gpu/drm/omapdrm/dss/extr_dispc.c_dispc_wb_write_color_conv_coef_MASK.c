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
struct dispc_device {int dummy; } ;
struct csc_coef_rgb2yuv {int /*<<< orphan*/  full_range; int /*<<< orphan*/  cbb; int /*<<< orphan*/  cbr; int /*<<< orphan*/  cbg; int /*<<< orphan*/  crg; int /*<<< orphan*/  crb; int /*<<< orphan*/  yb; int /*<<< orphan*/  crr; int /*<<< orphan*/  yr; int /*<<< orphan*/  yg; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dispc_device *dispc,
					   const struct csc_coef_rgb2yuv *ct)
{
	const enum omap_plane_id plane = OMAP_DSS_WB;

#define CVAL(x, y) (FLD_VAL(x, 26, 16) | FLD_VAL(y, 10, 0))

	FUNC4(dispc, FUNC2(plane, 0), CVAL(ct->yg,  ct->yr));
	FUNC4(dispc, FUNC2(plane, 1), CVAL(ct->crr, ct->yb));
	FUNC4(dispc, FUNC2(plane, 2), CVAL(ct->crb, ct->crg));
	FUNC4(dispc, FUNC2(plane, 3), CVAL(ct->cbg, ct->cbr));
	FUNC4(dispc, FUNC2(plane, 4), CVAL(0, ct->cbb));

	FUNC3(dispc, FUNC1(plane), ct->full_range, 11, 11);

#undef CVAL
}