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
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 struct drm_syncobj* FUNC1 (struct drm_file*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_syncobj*,struct dma_fence*) ; 
 struct dma_fence* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct drm_file *file_private,
					      int fd, int handle)
{
	struct dma_fence *fence = FUNC4(fd);
	struct drm_syncobj *syncobj;

	if (!fence)
		return -EINVAL;

	syncobj = FUNC1(file_private, handle);
	if (!syncobj) {
		FUNC0(fence);
		return -ENOENT;
	}

	FUNC3(syncobj, fence);
	FUNC0(fence);
	FUNC2(syncobj);
	return 0;
}