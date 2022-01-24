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
struct vc4_bo {int /*<<< orphan*/  seqno; } ;
struct drm_vc4_wait_bo {scalar_t__ pad; int /*<<< orphan*/  timeout_ns; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct vc4_bo* FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	int ret;
	struct drm_vc4_wait_bo *args = data;
	struct drm_gem_object *gem_obj;
	struct vc4_bo *bo;

	if (args->pad != 0)
		return -EINVAL;

	gem_obj = FUNC1(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -EINVAL;
	}
	bo = FUNC3(gem_obj);

	ret = FUNC4(dev, bo->seqno,
					      &args->timeout_ns);

	FUNC2(gem_obj);
	return ret;
}