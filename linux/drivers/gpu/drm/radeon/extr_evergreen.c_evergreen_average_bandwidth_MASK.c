#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {void* full; } ;
struct evergreen_wm_params {int active_time; int blank_time; int bytes_per_pixel; int src_width; TYPE_1__ vsc; } ;
typedef  TYPE_1__ fixed20_12 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__,TYPE_1__) ; 
 void* FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

__attribute__((used)) static u32 FUNC4(struct evergreen_wm_params *wm)
{
	/* Calculate the display mode Average Bandwidth
	 * DisplayMode should contain the source and destination dimensions,
	 * timing, etc.
	 */
	fixed20_12 bpp;
	fixed20_12 line_time;
	fixed20_12 src_width;
	fixed20_12 bandwidth;
	fixed20_12 a;

	a.full = FUNC0(1000);
	line_time.full = FUNC0(wm->active_time + wm->blank_time);
	line_time.full = FUNC1(line_time, a);
	bpp.full = FUNC0(wm->bytes_per_pixel);
	src_width.full = FUNC0(wm->src_width);
	bandwidth.full = FUNC2(src_width, bpp);
	bandwidth.full = FUNC2(bandwidth, wm->vsc);
	bandwidth.full = FUNC1(bandwidth, line_time);

	return FUNC3(bandwidth);
}