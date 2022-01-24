#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {scalar_t__ full; } ;
struct TYPE_9__ {scalar_t__ full; } ;
struct TYPE_12__ {scalar_t__ full; } ;
struct TYPE_11__ {scalar_t__ full; } ;
struct rs690_watermark {TYPE_2__ priority_mark_max; TYPE_1__ priority_mark; TYPE_6__ consumption_rate; TYPE_3__ worst_case_latency; TYPE_6__ active_time; TYPE_3__ sclk; TYPE_6__ num_line_pair; TYPE_3__ dbpp; } ;
struct radeon_device {int disp_priority; } ;
struct drm_display_mode {int dummy; } ;
typedef  TYPE_3__ fixed20_12 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (TYPE_3__,TYPE_3__) ; 
 void* FUNC5 (TYPE_3__,TYPE_6__) ; 
 int FUNC6 (TYPE_3__) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev,
					struct rs690_watermark *wm0,
					struct rs690_watermark *wm1,
					struct drm_display_mode *mode0,
					struct drm_display_mode *mode1,
					u32 *d1mode_priority_a_cnt,
					u32 *d2mode_priority_a_cnt)
{
	fixed20_12 priority_mark02, priority_mark12, fill_rate;
	fixed20_12 a, b;

	*d1mode_priority_a_cnt = FUNC1(1);
	*d2mode_priority_a_cnt = FUNC1(1);

	if (mode0 && mode1) {
		if (FUNC6(wm0->dbpp) > 64)
			a.full = FUNC5(wm0->dbpp, wm0->num_line_pair);
		else
			a.full = wm0->num_line_pair.full;
		if (FUNC6(wm1->dbpp) > 64)
			b.full = FUNC5(wm1->dbpp, wm1->num_line_pair);
		else
			b.full = wm1->num_line_pair.full;
		a.full += b.full;
		fill_rate.full = FUNC4(wm0->sclk, a);
		if (wm0->consumption_rate.full > fill_rate.full) {
			b.full = wm0->consumption_rate.full - fill_rate.full;
			b.full = FUNC5(b, wm0->active_time);
			a.full = FUNC5(wm0->worst_case_latency,
						wm0->consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC3(16 * 1000);
			priority_mark02.full = FUNC4(a, b);
		} else {
			a.full = FUNC5(wm0->worst_case_latency,
						wm0->consumption_rate);
			b.full = FUNC3(16 * 1000);
			priority_mark02.full = FUNC4(a, b);
		}
		if (wm1->consumption_rate.full > fill_rate.full) {
			b.full = wm1->consumption_rate.full - fill_rate.full;
			b.full = FUNC5(b, wm1->active_time);
			a.full = FUNC5(wm1->worst_case_latency,
						wm1->consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC3(16 * 1000);
			priority_mark12.full = FUNC4(a, b);
		} else {
			a.full = FUNC5(wm1->worst_case_latency,
						wm1->consumption_rate);
			b.full = FUNC3(16 * 1000);
			priority_mark12.full = FUNC4(a, b);
		}
		if (wm0->priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0->priority_mark.full;
		if (wm0->priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0->priority_mark_max.full;
		if (wm1->priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1->priority_mark.full;
		if (wm1->priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1->priority_mark_max.full;
		*d1mode_priority_a_cnt = FUNC6(priority_mark02);
		*d2mode_priority_a_cnt = FUNC6(priority_mark12);
		if (rdev->disp_priority == 2) {
			*d1mode_priority_a_cnt |= FUNC0(1);
			*d2mode_priority_a_cnt |= FUNC2(1);
		}
	} else if (mode0) {
		if (FUNC6(wm0->dbpp) > 64)
			a.full = FUNC5(wm0->dbpp, wm0->num_line_pair);
		else
			a.full = wm0->num_line_pair.full;
		fill_rate.full = FUNC4(wm0->sclk, a);
		if (wm0->consumption_rate.full > fill_rate.full) {
			b.full = wm0->consumption_rate.full - fill_rate.full;
			b.full = FUNC5(b, wm0->active_time);
			a.full = FUNC5(wm0->worst_case_latency,
						wm0->consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC3(16 * 1000);
			priority_mark02.full = FUNC4(a, b);
		} else {
			a.full = FUNC5(wm0->worst_case_latency,
						wm0->consumption_rate);
			b.full = FUNC3(16 * 1000);
			priority_mark02.full = FUNC4(a, b);
		}
		if (wm0->priority_mark.full > priority_mark02.full)
			priority_mark02.full = wm0->priority_mark.full;
		if (wm0->priority_mark_max.full > priority_mark02.full)
			priority_mark02.full = wm0->priority_mark_max.full;
		*d1mode_priority_a_cnt = FUNC6(priority_mark02);
		if (rdev->disp_priority == 2)
			*d1mode_priority_a_cnt |= FUNC0(1);
	} else if (mode1) {
		if (FUNC6(wm1->dbpp) > 64)
			a.full = FUNC5(wm1->dbpp, wm1->num_line_pair);
		else
			a.full = wm1->num_line_pair.full;
		fill_rate.full = FUNC4(wm1->sclk, a);
		if (wm1->consumption_rate.full > fill_rate.full) {
			b.full = wm1->consumption_rate.full - fill_rate.full;
			b.full = FUNC5(b, wm1->active_time);
			a.full = FUNC5(wm1->worst_case_latency,
						wm1->consumption_rate);
			a.full = a.full + b.full;
			b.full = FUNC3(16 * 1000);
			priority_mark12.full = FUNC4(a, b);
		} else {
			a.full = FUNC5(wm1->worst_case_latency,
						wm1->consumption_rate);
			b.full = FUNC3(16 * 1000);
			priority_mark12.full = FUNC4(a, b);
		}
		if (wm1->priority_mark.full > priority_mark12.full)
			priority_mark12.full = wm1->priority_mark.full;
		if (wm1->priority_mark_max.full > priority_mark12.full)
			priority_mark12.full = wm1->priority_mark_max.full;
		*d2mode_priority_a_cnt = FUNC6(priority_mark12);
		if (rdev->disp_priority == 2)
			*d2mode_priority_a_cnt |= FUNC2(1);
	}
}