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
struct exynos_drm_gem {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_file*,unsigned int) ; 
 struct exynos_drm_gem* FUNC1 (struct drm_gem_object*) ; 

struct exynos_drm_gem *FUNC2(struct drm_file *filp,
					  unsigned int gem_handle)
{
	struct drm_gem_object *obj;

	obj = FUNC0(filp, gem_handle);
	if (!obj)
		return NULL;
	return FUNC1(obj);
}