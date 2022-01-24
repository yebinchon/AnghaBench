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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_vram_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_file *file,
					 struct drm_device *dev,
					 uint32_t handle, uint64_t *offset)
{
	struct drm_gem_object *gem;
	struct drm_gem_vram_object *gbo;

	gem = FUNC0(file, handle);
	if (!gem)
		return -ENOENT;

	gbo = FUNC3(gem);
	*offset = FUNC2(gbo);

	FUNC1(gem);

	return 0;
}