#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int op; int /*<<< orphan*/  ctx_id; int /*<<< orphan*/  fd; int /*<<< orphan*/  priority; } ;
union drm_amdgpu_sched {TYPE_1__ in; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;

/* Variables and functions */
#define  AMDGPU_SCHED_OP_CONTEXT_PRIORITY_OVERRIDE 129 
#define  AMDGPU_SCHED_OP_PROCESS_PRIORITY_OVERRIDE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DRM_SCHED_PRIORITY_INVALID ; 
 int EINVAL ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, void *data,
		       struct drm_file *filp)
{
	union drm_amdgpu_sched *args = data;
	struct amdgpu_device *adev = dev->dev_private;
	enum drm_sched_priority priority;
	int r;

	priority = FUNC3(args->in.priority);
	if (priority == DRM_SCHED_PRIORITY_INVALID)
		return -EINVAL;

	switch (args->in.op) {
	case AMDGPU_SCHED_OP_PROCESS_PRIORITY_OVERRIDE:
		r = FUNC2(adev,
							   args->in.fd,
							   priority);
		break;
	case AMDGPU_SCHED_OP_CONTEXT_PRIORITY_OVERRIDE:
		r = FUNC1(adev,
							   args->in.fd,
							   args->in.ctx_id,
							   priority);
		break;
	default:
		FUNC0("Invalid sched op specified: %d\n", args->in.op);
		r = -EINVAL;
		break;
	}

	return r;
}