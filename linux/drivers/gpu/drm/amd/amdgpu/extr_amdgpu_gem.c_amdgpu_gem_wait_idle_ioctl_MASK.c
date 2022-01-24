#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int status; } ;
struct TYPE_8__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  handle; } ;
union drm_amdgpu_gem_wait_idle {TYPE_3__ out; TYPE_4__ in; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ,int,int,unsigned long) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (union drm_amdgpu_gem_wait_idle*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct drm_device *dev, void *data,
			      struct drm_file *filp)
{
	union drm_amdgpu_gem_wait_idle *args = data;
	struct drm_gem_object *gobj;
	struct amdgpu_bo *robj;
	uint32_t handle = args->in.handle;
	unsigned long timeout = FUNC0(args->in.timeout);
	int r = 0;
	long ret;

	gobj = FUNC2(filp, handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC4(gobj);
	ret = FUNC1(robj->tbo.base.resv, true, true,
						  timeout);

	/* ret == 0 means not signaled,
	 * ret > 0 means signaled
	 * ret < 0 means interrupted before timeout
	 */
	if (ret >= 0) {
		FUNC5(args, 0, sizeof(*args));
		args->out.status = (ret == 0);
	} else
		r = ret;

	FUNC3(gobj);
	return r;
}