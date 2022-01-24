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
struct drm_omap_gem_info {int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data,
		struct drm_file *file_priv)
{
	struct drm_omap_gem_info *args = data;
	struct drm_gem_object *obj;
	int ret = 0;

	FUNC0("%p:%p: handle=%d", dev, file_priv, args->handle);

	obj = FUNC1(file_priv, args->handle);
	if (!obj)
		return -ENOENT;

	args->size = FUNC4(obj);
	args->offset = FUNC3(obj);

	FUNC2(obj);

	return ret;
}