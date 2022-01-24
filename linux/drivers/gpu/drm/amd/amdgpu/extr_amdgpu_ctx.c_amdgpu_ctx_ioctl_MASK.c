#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ctx_id; } ;
struct TYPE_7__ {TYPE_2__ alloc; } ;
struct TYPE_5__ {int op; int /*<<< orphan*/  priority; int /*<<< orphan*/  ctx_id; } ;
union drm_amdgpu_ctx {TYPE_3__ out; TYPE_1__ in; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;

/* Variables and functions */
#define  AMDGPU_CTX_OP_ALLOC_CTX 131 
#define  AMDGPU_CTX_OP_FREE_CTX 130 
#define  AMDGPU_CTX_OP_QUERY_STATE 129 
#define  AMDGPU_CTX_OP_QUERY_STATE2 128 
 int DRM_SCHED_PRIORITY_INVALID ; 
 int DRM_SCHED_PRIORITY_NORMAL ; 
 int EINVAL ; 
 int FUNC0 (struct amdgpu_device*,struct amdgpu_fpriv*,struct drm_file*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_fpriv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_fpriv*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC3 (struct amdgpu_device*,struct amdgpu_fpriv*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_device *dev, void *data,
		     struct drm_file *filp)
{
	int r;
	uint32_t id;
	enum drm_sched_priority priority;

	union drm_amdgpu_ctx *args = data;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_fpriv *fpriv = filp->driver_priv;

	r = 0;
	id = args->in.ctx_id;
	priority = FUNC4(args->in.priority);

	/* For backwards compatibility reasons, we need to accept
	 * ioctls with garbage in the priority field */
	if (priority == DRM_SCHED_PRIORITY_INVALID)
		priority = DRM_SCHED_PRIORITY_NORMAL;

	switch (args->in.op) {
	case AMDGPU_CTX_OP_ALLOC_CTX:
		r = FUNC0(adev, fpriv, filp, priority, &id);
		args->out.alloc.ctx_id = id;
		break;
	case AMDGPU_CTX_OP_FREE_CTX:
		r = FUNC1(fpriv, id);
		break;
	case AMDGPU_CTX_OP_QUERY_STATE:
		r = FUNC2(adev, fpriv, id, &args->out);
		break;
	case AMDGPU_CTX_OP_QUERY_STATE2:
		r = FUNC3(adev, fpriv, id, &args->out);
		break;
	default:
		return -EINVAL;
	}

	return r;
}