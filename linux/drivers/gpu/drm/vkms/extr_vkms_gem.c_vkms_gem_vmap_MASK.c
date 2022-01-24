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
struct vkms_gem_object {int /*<<< orphan*/  pages_lock; int /*<<< orphan*/ * pages; int /*<<< orphan*/  vmap_count; scalar_t__ vaddr; } ;
struct page {int dummy; } ;
struct drm_gem_object {unsigned int size; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int FUNC1 (struct page**) ; 
 int /*<<< orphan*/  VM_MAP ; 
 struct page** FUNC2 (struct vkms_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,int /*<<< orphan*/ *,int,int) ; 
 struct vkms_gem_object* FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct page**,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct drm_gem_object *obj)
{
	struct vkms_gem_object *vkms_obj = FUNC4(obj);
	int ret = 0;

	FUNC5(&vkms_obj->pages_lock);

	if (!vkms_obj->vaddr) {
		unsigned int n_pages = obj->size >> PAGE_SHIFT;
		struct page **pages = FUNC2(vkms_obj);

		if (FUNC0(pages)) {
			ret = FUNC1(pages);
			goto out;
		}

		vkms_obj->vaddr = FUNC7(pages, n_pages, VM_MAP, PAGE_KERNEL);
		if (!vkms_obj->vaddr)
			goto err_vmap;
	}

	vkms_obj->vmap_count++;
	goto out;

err_vmap:
	ret = -ENOMEM;
	FUNC3(obj, vkms_obj->pages, false, true);
	vkms_obj->pages = NULL;
out:
	FUNC6(&vkms_obj->pages_lock);
	return ret;
}