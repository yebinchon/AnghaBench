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
struct file {int dummy; } ;
struct drm_gem_object {struct file* filp; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  VM_NORESERVE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_gem_object*,size_t) ; 
 struct file* FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev,
			struct drm_gem_object *obj, size_t size)
{
	struct file *filp;

	FUNC2(dev, obj, size);

	filp = FUNC3("drm mm object", size, VM_NORESERVE);
	if (FUNC0(filp))
		return FUNC1(filp);

	obj->filp = filp;

	return 0;
}