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
struct oaktrail_hdmi_clock {int np; int nr; int nf; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_7__ {int min; int max; } ;
struct TYPE_6__ {int min; int max; } ;
struct TYPE_5__ {int min; int max; } ;
struct TYPE_8__ {TYPE_3__ nr; TYPE_2__ np; TYPE_1__ vco; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 TYPE_4__ oaktrail_hdmi_limit ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc, int target,
				int refclk, struct oaktrail_hdmi_clock *best_clock)
{
	int np_min, np_max, nr_min, nr_max;
	int np, nr, nf;

	np_min = FUNC1(oaktrail_hdmi_limit.vco.min, target * 10);
	np_max = oaktrail_hdmi_limit.vco.max / (target * 10);
	if (np_min < oaktrail_hdmi_limit.np.min)
		np_min = oaktrail_hdmi_limit.np.min;
	if (np_max > oaktrail_hdmi_limit.np.max)
		np_max = oaktrail_hdmi_limit.np.max;

	nr_min = FUNC1((refclk * 1000), (target * 10 * np_max));
	nr_max = FUNC1((refclk * 1000), (target * 10 * np_min));
	if (nr_min < oaktrail_hdmi_limit.nr.min)
		nr_min = oaktrail_hdmi_limit.nr.min;
	if (nr_max > oaktrail_hdmi_limit.nr.max)
		nr_max = oaktrail_hdmi_limit.nr.max;

	np = FUNC1((refclk * 1000), (target * 10 * nr_max));
	nr = FUNC1((refclk * 1000), (target * 10 * np));
	nf = FUNC0((target * 10 * np * nr), refclk);
	FUNC2("np, nr, nf %d %d %d\n", np, nr, nf);

	/*
	 * 1024 x 768  np = 1; nr = 0x26; nf = 0x0fd8000;
	 * 1280 x 1024 np = 1; nr = 0x17; nf = 0x1034000;
	 */
	best_clock->np = np;
	best_clock->nr = nr - 1;
	best_clock->nf = (nf << 14);
}