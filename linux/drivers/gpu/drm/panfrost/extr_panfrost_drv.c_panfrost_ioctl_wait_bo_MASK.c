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
struct drm_panfrost_wait_bo {int /*<<< orphan*/  handle; scalar_t__ pad; int /*<<< orphan*/  timeout_ns; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 long EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 long ETIMEDOUT ; 
 long FUNC0 (int /*<<< orphan*/ ,int,int,unsigned long) ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	long ret;
	struct drm_panfrost_wait_bo *args = data;
	struct drm_gem_object *gem_obj;
	unsigned long timeout = FUNC3(args->timeout_ns);

	if (args->pad)
		return -EINVAL;

	gem_obj = FUNC1(file_priv, args->handle);
	if (!gem_obj)
		return -ENOENT;

	ret = FUNC0(gem_obj->resv, true,
						  true, timeout);
	if (!ret)
		ret = timeout ? -ETIMEDOUT : -EBUSY;

	FUNC2(gem_obj);

	return ret;
}