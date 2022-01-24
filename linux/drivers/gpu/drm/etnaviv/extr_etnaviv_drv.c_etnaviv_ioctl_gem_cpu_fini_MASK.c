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
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_etnaviv_gem_cpu_fini {int /*<<< orphan*/  handle; scalar_t__ flags; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct drm_etnaviv_gem_cpu_fini *args = data;
	struct drm_gem_object *obj;
	int ret;

	if (args->flags)
		return -EINVAL;

	obj = FUNC0(file, args->handle);
	if (!obj)
		return -ENOENT;

	ret = FUNC2(obj);

	FUNC1(obj);

	return ret;
}