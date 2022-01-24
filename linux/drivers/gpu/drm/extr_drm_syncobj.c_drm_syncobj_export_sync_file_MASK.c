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
struct sync_file {int /*<<< orphan*/  file; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int FUNC1 (struct drm_file*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct sync_file* FUNC5 (struct dma_fence*) ; 

__attribute__((used)) static int FUNC6(struct drm_file *file_private,
					int handle, int *p_fd)
{
	int ret;
	struct dma_fence *fence;
	struct sync_file *sync_file;
	int fd = FUNC3(O_CLOEXEC);

	if (fd < 0)
		return fd;

	ret = FUNC1(file_private, handle, 0, 0, &fence);
	if (ret)
		goto err_put_fd;

	sync_file = FUNC5(fence);

	FUNC0(fence);

	if (!sync_file) {
		ret = -EINVAL;
		goto err_put_fd;
	}

	FUNC2(fd, sync_file->file);

	*p_fd = fd;
	return 0;
err_put_fd:
	FUNC4(fd);
	return ret;
}