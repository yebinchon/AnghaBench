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
typedef  int /*<<< orphan*/  u32 ;
struct v3d_job {void (* free ) (struct kref*) ;int /*<<< orphan*/  deps; int /*<<< orphan*/  refcount; struct v3d_dev* v3d; } ;
struct v3d_dev {int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XA_FLAGS_ALLOC ; 
 int FUNC0 (int /*<<< orphan*/ *,struct dma_fence*) ; 
 int FUNC1 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct v3d_dev *v3d, struct drm_file *file_priv,
	     struct v3d_job *job, void (*free)(struct kref *ref),
	     u32 in_sync)
{
	struct dma_fence *in_fence = NULL;
	int ret;

	job->v3d = v3d;
	job->free = free;

	ret = FUNC3(v3d->dev);
	if (ret < 0)
		return ret;

	FUNC6(&job->deps, XA_FLAGS_ALLOC);

	ret = FUNC1(file_priv, in_sync, 0, 0, &in_fence);
	if (ret == -EINVAL)
		goto fail;

	ret = FUNC0(&job->deps, in_fence);
	if (ret)
		goto fail;

	FUNC2(&job->refcount);

	return 0;
fail:
	FUNC5(&job->deps);
	FUNC4(v3d->dev);
	return ret;
}