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
typedef  int /*<<< orphan*/  uint64_t ;
struct qxl_release {int dummy; } ;
struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct qxl_bo* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct qxl_release*,struct qxl_bo*) ; 

__attribute__((used)) static int FUNC4(struct drm_file *file_priv, uint64_t handle,
			      struct qxl_release *release, struct qxl_bo **qbo_p)
{
	struct drm_gem_object *gobj;
	struct qxl_bo *qobj;
	int ret;

	gobj = FUNC0(file_priv, handle);
	if (!gobj)
		return -EINVAL;

	qobj = FUNC2(gobj);

	ret = FUNC3(release, qobj);
	FUNC1(gobj);
	if (ret)
		return ret;

	*qbo_p = qobj;
	return 0;
}