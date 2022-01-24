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
struct panfrost_job {scalar_t__ requirements; int /*<<< orphan*/  render_done_fence; int /*<<< orphan*/  file_priv; int /*<<< orphan*/  flush_id; scalar_t__ jc; struct panfrost_device* pfdev; int /*<<< orphan*/  refcount; } ;
struct panfrost_device {int dummy; } ;
struct drm_syncobj {int dummy; } ;
struct drm_panfrost_submit {scalar_t__ requirements; scalar_t__ out_sync; scalar_t__ jc; } ;
struct drm_file {int /*<<< orphan*/  driver_priv; } ;
struct drm_device {struct panfrost_device* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PANFROST_JD_REQ_FS ; 
 struct drm_syncobj* FUNC0 (struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_syncobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct panfrost_job* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*,struct drm_file*,struct drm_panfrost_submit*,struct panfrost_job*) ; 
 int /*<<< orphan*/  FUNC6 (struct panfrost_device*) ; 
 int FUNC7 (struct panfrost_job*) ; 
 int /*<<< orphan*/  FUNC8 (struct panfrost_job*) ; 
 int FUNC9 (struct drm_device*,struct drm_file*,struct drm_panfrost_submit*,struct panfrost_job*) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct panfrost_device *pfdev = dev->dev_private;
	struct drm_panfrost_submit *args = data;
	struct drm_syncobj *sync_out = NULL;
	struct panfrost_job *job;
	int ret = 0;

	if (!args->jc)
		return -EINVAL;

	if (args->requirements && args->requirements != PANFROST_JD_REQ_FS)
		return -EINVAL;

	if (args->out_sync > 0) {
		sync_out = FUNC0(file, args->out_sync);
		if (!sync_out)
			return -ENODEV;
	}

	job = FUNC4(sizeof(*job), GFP_KERNEL);
	if (!job) {
		ret = -ENOMEM;
		goto fail_out_sync;
	}

	FUNC3(&job->refcount);

	job->pfdev = pfdev;
	job->jc = args->jc;
	job->requirements = args->requirements;
	job->flush_id = FUNC6(pfdev);
	job->file_priv = file->driver_priv;

	ret = FUNC5(dev, file, args, job);
	if (ret)
		goto fail_job;

	ret = FUNC9(dev, file, args, job);
	if (ret)
		goto fail_job;

	ret = FUNC7(job);
	if (ret)
		goto fail_job;

	/* Update the return sync object for the job */
	if (sync_out)
		FUNC2(sync_out, job->render_done_fence);

fail_job:
	FUNC8(job);
fail_out_sync:
	if (sync_out)
		FUNC1(sync_out);

	return ret;
}