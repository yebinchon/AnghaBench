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
			 int min_vscale, int max_vscale)
{
	int src_h = FUNC1(src);
	int dst_h = FUNC1(dst);
	int vscale = FUNC0(src_h, dst_h);

	if (vscale < 0 || dst_h == 0)
		return vscale;

	if (vscale < min_vscale || vscale > max_vscale)
		return -ERANGE;

	return vscale;
}