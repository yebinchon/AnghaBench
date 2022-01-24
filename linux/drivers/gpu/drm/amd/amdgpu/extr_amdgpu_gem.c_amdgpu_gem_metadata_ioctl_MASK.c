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
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int data_size_bytes; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  tiling_info; } ;
struct drm_amdgpu_gem_metadata {scalar_t__ op; TYPE_1__ data; int /*<<< orphan*/  handle; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_GEM_METADATA_OP_GET_METADATA ; 
 scalar_t__ AMDGPU_GEM_METADATA_OP_SET_METADATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct amdgpu_bo*,int) ; 
 int FUNC4 (struct amdgpu_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo*) ; 
 struct drm_gem_object* FUNC7 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC9 (struct drm_gem_object*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct drm_device *dev, void *data,
				struct drm_file *filp)
{
	struct drm_amdgpu_gem_metadata *args = data;
	struct drm_gem_object *gobj;
	struct amdgpu_bo *robj;
	int r = -1;

	FUNC0("%d \n", args->handle);
	gobj = FUNC7(filp, args->handle);
	if (gobj == NULL)
		return -ENOENT;
	robj = FUNC9(gobj);

	r = FUNC3(robj, false);
	if (FUNC10(r != 0))
		goto out;

	if (args->op == AMDGPU_GEM_METADATA_OP_GET_METADATA) {
		FUNC2(robj, &args->data.tiling_info);
		r = FUNC1(robj, args->data.data,
					   sizeof(args->data.data),
					   &args->data.data_size_bytes,
					   &args->data.flags);
	} else if (args->op == AMDGPU_GEM_METADATA_OP_SET_METADATA) {
		if (args->data.data_size_bytes > sizeof(args->data.data)) {
			r = -EINVAL;
			goto unreserve;
		}
		r = FUNC5(robj, args->data.tiling_info);
		if (!r)
			r = FUNC4(robj, args->data.data,
						   args->data.data_size_bytes,
						   args->data.flags);
	}

unreserve:
	FUNC6(robj);
out:
	FUNC8(gobj);
	return r;
}