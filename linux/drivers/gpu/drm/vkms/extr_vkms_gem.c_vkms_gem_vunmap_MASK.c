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
struct vkms_gem_object {int vmap_count; int /*<<< orphan*/  pages_lock; int /*<<< orphan*/ * pages; int /*<<< orphan*/ * vaddr; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ *,int,int) ; 
 struct vkms_gem_object* FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_gem_object *obj)
{
	struct vkms_gem_object *vkms_obj = FUNC2(obj);

	FUNC3(&vkms_obj->pages_lock);
	if (vkms_obj->vmap_count < 1) {
		FUNC0(vkms_obj->vaddr);
		FUNC0(vkms_obj->pages);
		FUNC4(&vkms_obj->pages_lock);
		return;
	}

	vkms_obj->vmap_count--;

	if (vkms_obj->vmap_count == 0) {
		FUNC5(vkms_obj->vaddr);
		vkms_obj->vaddr = NULL;
		FUNC1(obj, vkms_obj->pages, false, true);
		vkms_obj->pages = NULL;
	}

	FUNC4(&vkms_obj->pages_lock);
}