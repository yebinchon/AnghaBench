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
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 int FUNC2 (struct drm_crtc_state*) ; 

__attribute__((used)) static int FUNC3(struct drm_crtc *c,
					 struct drm_crtc_state *s)
{
	int ret;

	ret = FUNC0(s);
	if (ret)
		return ret;

	ret = FUNC2(s);
	if (ret)
		return ret;

	return FUNC1(s);
}