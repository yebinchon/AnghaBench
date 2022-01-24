#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int list_handle; } ;
struct TYPE_4__ {int list_handle; int operation; int /*<<< orphan*/  bo_number; } ;
union drm_amdgpu_bo_list {TYPE_1__ out; TYPE_2__ in; } ;
typedef  int uint32_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_fpriv {int /*<<< orphan*/  bo_list_lock; int /*<<< orphan*/  bo_list_handles; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_list {int dummy; } ;

/* Variables and functions */
#define  AMDGPU_BO_LIST_OP_CREATE 130 
#define  AMDGPU_BO_LIST_OP_DESTROY 129 
#define  AMDGPU_BO_LIST_OP_UPDATE 128 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo_list*) ; 
 int FUNC1 (struct amdgpu_bo_list*) ; 
 int FUNC2 (TYPE_2__*,struct drm_amdgpu_bo_list_entry**) ; 
 int FUNC3 (struct amdgpu_device*,struct drm_file*,struct drm_amdgpu_bo_list_entry*,int /*<<< orphan*/ ,struct amdgpu_bo_list**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_fpriv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo_list*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct amdgpu_bo_list*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo_list* FUNC7 (int /*<<< orphan*/ *,struct amdgpu_bo_list*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_amdgpu_bo_list_entry*) ; 
 int /*<<< orphan*/  FUNC9 (union drm_amdgpu_bo_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct drm_device *dev, void *data,
				struct drm_file *filp)
{
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_fpriv *fpriv = filp->driver_priv;
	union drm_amdgpu_bo_list *args = data;
	uint32_t handle = args->in.list_handle;
	struct drm_amdgpu_bo_list_entry *info = NULL;
	struct amdgpu_bo_list *list, *old;
	int r;

	r = FUNC2(&args->in, &info);
	if (r)
		return r;

	switch (args->in.operation) {
	case AMDGPU_BO_LIST_OP_CREATE:
		r = FUNC3(adev, filp, info, args->in.bo_number,
					  &list);
		if (r)
			goto error_free;

		FUNC10(&fpriv->bo_list_lock);
		r = FUNC6(&fpriv->bo_list_handles, list, 1, 0, GFP_KERNEL);
		FUNC11(&fpriv->bo_list_lock);
		if (r < 0) {
			goto error_put_list;
		}

		handle = r;
		break;

	case AMDGPU_BO_LIST_OP_DESTROY:
		FUNC4(fpriv, handle);
		handle = 0;
		break;

	case AMDGPU_BO_LIST_OP_UPDATE:
		r = FUNC3(adev, filp, info, args->in.bo_number,
					  &list);
		if (r)
			goto error_free;

		FUNC10(&fpriv->bo_list_lock);
		old = FUNC7(&fpriv->bo_list_handles, list, handle);
		FUNC11(&fpriv->bo_list_lock);

		if (FUNC0(old)) {
			r = FUNC1(old);
			goto error_put_list;
		}

		FUNC5(old);
		break;

	default:
		r = -EINVAL;
		goto error_free;
	}

	FUNC9(args, 0, sizeof(*args));
	args->out.list_handle = handle;
	FUNC8(info);

	return 0;

error_put_list:
	FUNC5(list);

error_free:
	FUNC8(info);
	return r;
}