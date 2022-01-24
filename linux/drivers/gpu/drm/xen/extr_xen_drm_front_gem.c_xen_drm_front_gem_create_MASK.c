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
struct xen_gem_object {struct drm_gem_object base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct xen_gem_object*) ; 
 scalar_t__ FUNC1 (struct xen_gem_object*) ; 
 struct xen_gem_object* FUNC2 (struct drm_device*,size_t) ; 

struct drm_gem_object *FUNC3(struct drm_device *dev,
						size_t size)
{
	struct xen_gem_object *xen_obj;

	xen_obj = FUNC2(dev, size);
	if (FUNC1(xen_obj))
		return FUNC0(xen_obj);

	return &xen_obj->base;
}