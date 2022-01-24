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
typedef  int /*<<< orphan*/  uint32_t ;
struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct qxl_bo* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_bo*) ; 

int FUNC5(struct drm_file *file_priv,
		       struct drm_device *dev,
		       uint32_t handle, uint64_t *offset_p)
{
	struct drm_gem_object *gobj;
	struct qxl_bo *qobj;

	FUNC0(!offset_p);
	gobj = FUNC1(file_priv, handle);
	if (gobj == NULL)
		return -ENOENT;
	qobj = FUNC3(gobj);
	*offset_p = FUNC4(qobj);
	FUNC2(gobj);
	return 0;
}