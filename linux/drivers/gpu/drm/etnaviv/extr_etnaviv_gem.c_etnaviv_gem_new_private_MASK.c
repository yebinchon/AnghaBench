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
typedef  int /*<<< orphan*/  u32 ;
struct etnaviv_gem_ops {int dummy; } ;
struct etnaviv_gem_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_gem_object*,size_t) ; 
 int FUNC1 (struct drm_device*,size_t,int /*<<< orphan*/ ,struct etnaviv_gem_ops const*,struct drm_gem_object**) ; 
 struct etnaviv_gem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_device *dev, size_t size, u32 flags,
	const struct etnaviv_gem_ops *ops, struct etnaviv_gem_object **res)
{
	struct drm_gem_object *obj;
	int ret;

	ret = FUNC1(dev, size, flags, ops, &obj);
	if (ret)
		return ret;

	FUNC0(dev, obj, size);

	*res = FUNC2(obj);

	return 0;
}