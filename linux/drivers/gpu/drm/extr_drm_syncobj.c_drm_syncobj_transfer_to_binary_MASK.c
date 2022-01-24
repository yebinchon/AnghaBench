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
struct drm_syncobj_transfer {int /*<<< orphan*/  flags; int /*<<< orphan*/  src_point; int /*<<< orphan*/  src_handle; int /*<<< orphan*/  dst_handle; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 struct drm_syncobj* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_syncobj*,struct dma_fence*) ; 

__attribute__((used)) static int
FUNC5(struct drm_file *file_private,
			       struct drm_syncobj_transfer *args)
{
	struct drm_syncobj *binary_syncobj = NULL;
	struct dma_fence *fence;
	int ret;

	binary_syncobj = FUNC1(file_private, args->dst_handle);
	if (!binary_syncobj)
		return -ENOENT;
	ret = FUNC2(file_private, args->src_handle,
				     args->src_point, args->flags, &fence);
	if (ret)
		goto err;
	FUNC4(binary_syncobj, fence);
	FUNC0(fence);
err:
	FUNC3(binary_syncobj);

	return ret;
}