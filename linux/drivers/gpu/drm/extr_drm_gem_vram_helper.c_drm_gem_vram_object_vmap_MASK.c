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
struct drm_gem_vram_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (struct drm_gem_vram_object*,int,int /*<<< orphan*/ *) ; 
 struct drm_gem_vram_object* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct drm_gem_vram_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_vram_object*) ; 

__attribute__((used)) static void *FUNC5(struct drm_gem_object *gem)
{
	struct drm_gem_vram_object *gbo = FUNC2(gem);
	int ret;
	void *base;

	ret = FUNC3(gbo, 0);
	if (ret)
		return NULL;
	base = FUNC1(gbo, true, NULL);
	if (FUNC0(base)) {
		FUNC4(gbo);
		return NULL;
	}
	return base;
}