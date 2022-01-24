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
struct xen_gem_object {struct page** pages; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct xen_gem_object* FUNC0 (struct drm_gem_object*) ; 

struct page **FUNC1(struct drm_gem_object *gem_obj)
{
	struct xen_gem_object *xen_obj = FUNC0(gem_obj);

	return xen_obj->pages;
}