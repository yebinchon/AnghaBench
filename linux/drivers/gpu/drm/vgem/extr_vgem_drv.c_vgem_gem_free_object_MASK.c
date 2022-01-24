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
struct drm_vgem_gem_object {int /*<<< orphan*/  table; int /*<<< orphan*/  pages_lock; int /*<<< orphan*/  pages; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_vgem_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_vgem_gem_object* FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC6(struct drm_gem_object *obj)
{
	struct drm_vgem_gem_object *vgem_obj = FUNC5(obj);

	FUNC3(vgem_obj->pages);
	FUNC4(&vgem_obj->pages_lock);

	if (obj->import_attach)
		FUNC1(obj, vgem_obj->table);

	FUNC0(obj);
	FUNC2(vgem_obj);
}