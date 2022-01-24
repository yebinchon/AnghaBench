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
struct drm_syncobj_transfer {int /*<<< orphan*/  dst_point; int /*<<< orphan*/  flags; int /*<<< orphan*/  src_point; int /*<<< orphan*/  src_handle; int /*<<< orphan*/  dst_handle; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence_chain {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*,struct dma_fence_chain*,struct dma_fence*,int /*<<< orphan*/ ) ; 
 struct drm_syncobj* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_syncobj*) ; 
 struct dma_fence_chain* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_file *file_private,
					    struct drm_syncobj_transfer *args)
{
	struct drm_syncobj *timeline_syncobj = NULL;
	struct dma_fence *fence;
	struct dma_fence_chain *chain;
	int ret;

	timeline_syncobj = FUNC2(file_private, args->dst_handle);
	if (!timeline_syncobj) {
		return -ENOENT;
	}
	ret = FUNC3(file_private, args->src_handle,
				     args->src_point, args->flags,
				     &fence);
	if (ret)
		goto err;
	chain = FUNC5(sizeof(struct dma_fence_chain), GFP_KERNEL);
	if (!chain) {
		ret = -ENOMEM;
		goto err1;
	}
	FUNC1(timeline_syncobj, chain, fence, args->dst_point);
err1:
	FUNC0(fence);
err:
	FUNC4(timeline_syncobj);

	return ret;
}