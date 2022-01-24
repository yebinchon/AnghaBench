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
struct drm_msm_gem_cpu_prep {int op; int /*<<< orphan*/  handle; int /*<<< orphan*/  timeout; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int MSM_PREP_FLAGS ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct drm_gem_object*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct drm_msm_gem_cpu_prep *args = data;
	struct drm_gem_object *obj;
	ktime_t timeout = FUNC4(args->timeout);
	int ret;

	if (args->op & ~MSM_PREP_FLAGS) {
		FUNC0("invalid op: %08x\n", args->op);
		return -EINVAL;
	}

	obj = FUNC1(file, args->handle);
	if (!obj)
		return -ENOENT;

	ret = FUNC3(obj, args->op, &timeout);

	FUNC2(obj);

	return ret;
}