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
struct vkms_gem_object {struct page** pages; struct drm_gem_object gem; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page**) ; 
 scalar_t__ FUNC1 (struct page***,int /*<<< orphan*/ *,struct page**) ; 
 struct page** FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,struct page**,int,int) ; 

__attribute__((used)) static struct page **FUNC4(struct vkms_gem_object *vkms_obj)
{
	struct drm_gem_object *gem_obj = &vkms_obj->gem;

	if (!vkms_obj->pages) {
		struct page **pages = FUNC2(gem_obj);

		if (FUNC0(pages))
			return pages;

		if (FUNC1(&vkms_obj->pages, NULL, pages))
			FUNC3(gem_obj, pages, false, true);
	}

	return vkms_obj->pages;
}