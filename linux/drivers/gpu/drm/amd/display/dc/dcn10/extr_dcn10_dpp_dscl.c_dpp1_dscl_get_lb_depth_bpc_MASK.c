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
typedef  enum lb_pixel_depth { ____Placeholder_lb_pixel_depth } lb_pixel_depth ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int LB_PIXEL_DEPTH_18BPP ; 
 int LB_PIXEL_DEPTH_24BPP ; 
 int LB_PIXEL_DEPTH_30BPP ; 
 int LB_PIXEL_DEPTH_36BPP ; 

__attribute__((used)) static int FUNC1(enum lb_pixel_depth depth)
{
	if (depth == LB_PIXEL_DEPTH_30BPP)
		return 10;
	else if (depth == LB_PIXEL_DEPTH_24BPP)
		return 8;
	else if (depth == LB_PIXEL_DEPTH_18BPP)
		return 6;
	else if (depth == LB_PIXEL_DEPTH_36BPP)
		return 12;
	else {
		FUNC0();
		return -1; /* Unsupported */
	}
}