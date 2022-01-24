#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ import_attach; } ;
struct xen_gem_object {scalar_t__ pages; TYPE_1__ base; int /*<<< orphan*/  num_pages; scalar_t__ be_alloc; int /*<<< orphan*/  sgt_imported; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_gem_object*) ; 
 struct xen_gem_object* FUNC6 (struct drm_gem_object*) ; 

void FUNC7(struct drm_gem_object *gem_obj)
{
	struct xen_gem_object *xen_obj = FUNC6(gem_obj);

	if (xen_obj->base.import_attach) {
		FUNC2(&xen_obj->base, xen_obj->sgt_imported);
		FUNC4(xen_obj);
	} else {
		if (xen_obj->pages) {
			if (xen_obj->be_alloc) {
				FUNC3(xen_obj->num_pages,
							xen_obj->pages);
				FUNC4(xen_obj);
			} else {
				FUNC1(&xen_obj->base,
						  xen_obj->pages, true, false);
			}
		}
	}
	FUNC0(gem_obj);
	FUNC5(xen_obj);
}