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
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_framebuffer*,unsigned int) ; 
 struct drm_gem_cma_object* FUNC1 (struct drm_gem_object*) ; 

struct drm_gem_cma_object *FUNC2(struct drm_framebuffer *fb,
						  unsigned int plane)
{
	struct drm_gem_object *gem;

	gem = FUNC0(fb, plane);
	if (!gem)
		return NULL;

	return FUNC1(gem);
}