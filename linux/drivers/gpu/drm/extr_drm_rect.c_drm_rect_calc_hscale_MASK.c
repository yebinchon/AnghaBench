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
struct drm_rect {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct drm_rect const*) ; 

int FUNC2(const struct drm_rect *src,
			 const struct drm_rect *dst,
			 int min_hscale, int max_hscale)
{
	int src_w = FUNC1(src);
	int dst_w = FUNC1(dst);
	int hscale = FUNC0(src_w, dst_w);

	if (hscale < 0 || dst_w == 0)
		return hscale;

	if (hscale < min_hscale || hscale > max_hscale)
		return -ERANGE;

	return hscale;
}