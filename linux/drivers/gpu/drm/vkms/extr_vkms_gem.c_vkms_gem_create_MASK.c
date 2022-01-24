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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_gem_object {int dummy; } ;
struct vkms_gem_object {struct drm_gem_object gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct drm_gem_object* FUNC0 (struct vkms_gem_object*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vkms_gem_object*) ; 
 struct vkms_gem_object* FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 

struct drm_gem_object *FUNC6(struct drm_device *dev,
				       struct drm_file *file,
				       u32 *handle,
				       u64 size)
{
	struct vkms_gem_object *obj;
	int ret;

	if (!file || !dev || !handle)
		return FUNC1(-EINVAL);

	obj = FUNC3(dev, size);
	if (FUNC2(obj))
		return FUNC0(obj);

	ret = FUNC4(file, &obj->gem, handle);
	FUNC5(&obj->gem);
	if (ret)
		return FUNC1(ret);

	return &obj->gem;
}