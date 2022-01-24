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
struct msm_framebuffer {struct msm_format const* format; } ;
struct msm_format {int dummy; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 struct msm_framebuffer* FUNC0 (struct drm_framebuffer*) ; 

const struct msm_format *FUNC1(struct drm_framebuffer *fb)
{
	struct msm_framebuffer *msm_fb = FUNC0(fb);
	return msm_fb->format;
}