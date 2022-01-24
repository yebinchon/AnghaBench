#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udl_gem_object {scalar_t__ pages; int /*<<< orphan*/  sg; scalar_t__ vmapping; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct udl_gem_object* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct udl_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct udl_gem_object*) ; 

void FUNC6(struct drm_gem_object *gem_obj)
{
	struct udl_gem_object *obj = FUNC3(gem_obj);

	if (obj->vmapping)
		FUNC5(obj);

	if (gem_obj->import_attach) {
		FUNC1(gem_obj, obj->sg);
		FUNC2(gem_obj->dev->dev);
	}

	if (obj->pages)
		FUNC4(obj);

	FUNC0(gem_obj);
}