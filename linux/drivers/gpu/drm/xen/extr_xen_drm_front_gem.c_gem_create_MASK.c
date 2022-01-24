#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xen_gem_object {int be_alloc; struct xen_gem_object* pages; int /*<<< orphan*/  base; int /*<<< orphan*/  num_pages; } ;
struct xen_drm_front_drm_info {TYPE_2__* front_info; } ;
struct drm_device {struct xen_drm_front_drm_info* dev_private; } ;
struct TYPE_3__ {scalar_t__ be_alloc; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 struct xen_gem_object* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct xen_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC4 (struct xen_gem_object*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct xen_gem_object*) ; 
 struct xen_gem_object* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xen_gem_object*,size_t) ; 
 struct xen_gem_object* FUNC8 (struct drm_device*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct xen_gem_object*) ; 
 size_t FUNC10 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xen_gem_object *FUNC11(struct drm_device *dev, size_t size)
{
	struct xen_drm_front_drm_info *drm_info = dev->dev_private;
	struct xen_gem_object *xen_obj;
	int ret;

	size = FUNC10(size, PAGE_SIZE);
	xen_obj = FUNC8(dev, size);
	if (FUNC3(xen_obj))
		return xen_obj;

	if (drm_info->front_info->cfg.be_alloc) {
		/*
		 * backend will allocate space for this buffer, so
		 * only allocate array of pointers to pages
		 */
		ret = FUNC7(xen_obj, size);
		if (ret < 0)
			goto fail;

		/*
		 * allocate ballooned pages which will be used to map
		 * grant references provided by the backend
		 */
		ret = FUNC5(xen_obj->num_pages,
					       xen_obj->pages);
		if (ret < 0) {
			FUNC1("Cannot allocate %zu ballooned pages: %d\n",
				  xen_obj->num_pages, ret);
			FUNC9(xen_obj);
			goto fail;
		}

		xen_obj->be_alloc = true;
		return xen_obj;
	}
	/*
	 * need to allocate backing pages now, so we can share those
	 * with the backend
	 */
	xen_obj->num_pages = FUNC0(size, PAGE_SIZE);
	xen_obj->pages = FUNC6(&xen_obj->base);
	if (FUNC3(xen_obj->pages)) {
		ret = FUNC4(xen_obj->pages);
		xen_obj->pages = NULL;
		goto fail;
	}

	return xen_obj;

fail:
	FUNC1("Failed to allocate buffer with size %zu\n", size);
	return FUNC2(ret);
}