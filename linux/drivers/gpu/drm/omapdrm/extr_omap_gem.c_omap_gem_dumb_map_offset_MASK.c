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
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_file *file, struct drm_device *dev,
		u32 handle, u64 *offset)
{
	struct drm_gem_object *obj;
	int ret = 0;

	/* GEM does all our handle to object mapping */
	obj = FUNC0(file, handle);
	if (obj == NULL) {
		ret = -ENOENT;
		goto fail;
	}

	*offset = FUNC2(obj);

	FUNC1(obj);

fail:
	return ret;
}