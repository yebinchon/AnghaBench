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
struct lima_bo {int /*<<< orphan*/  va; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_bo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lima_bo* FUNC3 (struct drm_gem_object*) ; 

void FUNC4(struct drm_gem_object *obj)
{
	struct lima_bo *bo = FUNC3(obj);

	if (!FUNC2(&bo->va))
		FUNC0(obj->dev->dev, "lima gem free bo still has va\n");

	FUNC1(bo);
}