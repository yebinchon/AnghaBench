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
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {int what; int /*<<< orphan*/  fence; } ;
union drm_amdgpu_fence_to_handle {TYPE_2__ out; TYPE_1__ in; } ;
struct sync_file {int /*<<< orphan*/  file; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
#define  AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ 130 
#define  AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ_FD 129 
#define  AMDGPU_FENCE_TO_HANDLE_GET_SYNC_FILE_FD 128 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 (struct amdgpu_device*,struct drm_file*,int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int FUNC5 (struct drm_syncobj**,int /*<<< orphan*/ ,struct dma_fence*) ; 
 int FUNC6 (struct drm_syncobj*,int*) ; 
 int FUNC7 (struct drm_file*,struct drm_syncobj*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct sync_file* FUNC12 (struct dma_fence*) ; 

int FUNC13(struct drm_device *dev, void *data,
				    struct drm_file *filp)
{
	struct amdgpu_device *adev = dev->dev_private;
	union drm_amdgpu_fence_to_handle *info = data;
	struct dma_fence *fence;
	struct drm_syncobj *syncobj;
	struct sync_file *sync_file;
	int fd, r;

	fence = FUNC2(adev, filp, &info->in.fence);
	if (FUNC0(fence))
		return FUNC1(fence);

	if (!fence)
		fence = FUNC3();

	switch (info->in.what) {
	case AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ:
		r = FUNC5(&syncobj, 0, fence);
		FUNC4(fence);
		if (r)
			return r;
		r = FUNC7(filp, syncobj, &info->out.handle);
		FUNC8(syncobj);
		return r;

	case AMDGPU_FENCE_TO_HANDLE_GET_SYNCOBJ_FD:
		r = FUNC5(&syncobj, 0, fence);
		FUNC4(fence);
		if (r)
			return r;
		r = FUNC6(syncobj, (int*)&info->out.handle);
		FUNC8(syncobj);
		return r;

	case AMDGPU_FENCE_TO_HANDLE_GET_SYNC_FILE_FD:
		fd = FUNC10(O_CLOEXEC);
		if (fd < 0) {
			FUNC4(fence);
			return fd;
		}

		sync_file = FUNC12(fence);
		FUNC4(fence);
		if (!sync_file) {
			FUNC11(fd);
			return -ENOMEM;
		}

		FUNC9(fd, sync_file->file);
		info->out.handle = fd;
		return 0;

	default:
		return -EINVAL;
	}
}