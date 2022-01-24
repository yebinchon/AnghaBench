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
struct drm_vgem_gem_object {struct drm_gem_object base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_vgem_gem_object*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_vgem_gem_object*) ; 
 struct drm_vgem_gem_object* FUNC3 (struct drm_device*,unsigned long) ; 
 int FUNC4 (struct drm_file*,struct drm_gem_object*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_gem_object *FUNC6(struct drm_device *dev,
					      struct drm_file *file,
					      unsigned int *handle,
					      unsigned long size)
{
	struct drm_vgem_gem_object *obj;
	int ret;

	obj = FUNC3(dev, size);
	if (FUNC2(obj))
		return FUNC0(obj);

	ret = FUNC4(file, &obj->base, handle);
	FUNC5(&obj->base);
	if (ret)
		return FUNC1(ret);

	return &obj->base;
}