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
struct vkms_gem_object {int /*<<< orphan*/  pages_lock; int /*<<< orphan*/  gem; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vkms_gem_object* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vkms_gem_object*) ; 
 struct vkms_gem_object* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vkms_gem_object *FUNC6(struct drm_device *dev,
						 u64 size)
{
	struct vkms_gem_object *obj;
	int ret;

	obj = FUNC3(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return FUNC0(-ENOMEM);

	size = FUNC5(size, PAGE_SIZE);
	ret = FUNC1(dev, &obj->gem, size);
	if (ret) {
		FUNC2(obj);
		return FUNC0(ret);
	}

	FUNC4(&obj->pages_lock);

	return obj;
}