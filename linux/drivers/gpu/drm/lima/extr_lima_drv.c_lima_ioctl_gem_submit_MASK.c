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
struct lima_submit {int nr_bos; int flags; int /*<<< orphan*/  out_sync; int /*<<< orphan*/ * in_sync; struct lima_ctx* ctx; struct lima_sched_task* task; void* lbos; struct lima_sched_task* bos; int /*<<< orphan*/  pipe; int /*<<< orphan*/  member_0; } ;
struct lima_sched_task {struct lima_sched_task* frame; } ;
struct lima_sched_pipe {size_t frame_size; int (* task_validate ) (struct lima_sched_pipe*,struct lima_sched_task*) ;int /*<<< orphan*/  task_slab; } ;
struct lima_drm_priv {int /*<<< orphan*/  ctx_mgr; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
struct lima_ctx {int dummy; } ;
struct drm_lima_gem_submit_bo {struct drm_lima_gem_submit_bo* frame; } ;
struct drm_lima_gem_submit {int nr_bos; int flags; size_t frame_size; int /*<<< orphan*/  out_sync; int /*<<< orphan*/ * in_sync; int /*<<< orphan*/  pipe; int /*<<< orphan*/  ctx; int /*<<< orphan*/  frame; int /*<<< orphan*/  bos; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LIMA_SUBMIT_FLAG_EXPLICIT_FENCE ; 
 scalar_t__ FUNC0 (struct lima_sched_task*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lima_sched_task*) ; 
 struct lima_sched_task* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lima_sched_task* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lima_sched_task*) ; 
 struct lima_ctx* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lima_ctx*) ; 
 int FUNC7 (struct drm_file*,struct lima_submit*) ; 
 int /*<<< orphan*/  lima_pipe_num ; 
 int FUNC8 (struct lima_sched_pipe*,struct lima_sched_task*) ; 
 struct lima_device* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev, void *data, struct drm_file *file)
{
	struct drm_lima_gem_submit *args = data;
	struct lima_device *ldev = FUNC9(dev);
	struct lima_drm_priv *priv = file->driver_priv;
	struct drm_lima_gem_submit_bo *bos;
	struct lima_sched_pipe *pipe;
	struct lima_sched_task *task;
	struct lima_ctx *ctx;
	struct lima_submit submit = {0};
	size_t size;
	int err = 0;

	if (args->pipe >= lima_pipe_num || args->nr_bos == 0)
		return -EINVAL;

	if (args->flags & ~(LIMA_SUBMIT_FLAG_EXPLICIT_FENCE))
		return -EINVAL;

	pipe = ldev->pipe + args->pipe;
	if (args->frame_size != pipe->frame_size)
		return -EINVAL;

	bos = FUNC3(args->nr_bos, sizeof(*submit.bos) + sizeof(*submit.lbos), GFP_KERNEL);
	if (!bos)
		return -ENOMEM;

	size = args->nr_bos * sizeof(*submit.bos);
	if (FUNC0(bos, FUNC10(args->bos), size)) {
		err = -EFAULT;
		goto out0;
	}

	task = FUNC2(pipe->task_slab, GFP_KERNEL);
	if (!task) {
		err = -ENOMEM;
		goto out0;
	}

	task->frame = task + 1;
	if (FUNC0(task->frame, FUNC10(args->frame), args->frame_size)) {
		err = -EFAULT;
		goto out1;
	}

	err = pipe->task_validate(pipe, task);
	if (err)
		goto out1;

	ctx = FUNC5(&priv->ctx_mgr, args->ctx);
	if (!ctx) {
		err = -ENOENT;
		goto out1;
	}

	submit.pipe = args->pipe;
	submit.bos = bos;
	submit.lbos = (void *)bos + size;
	submit.nr_bos = args->nr_bos;
	submit.task = task;
	submit.ctx = ctx;
	submit.flags = args->flags;
	submit.in_sync[0] = args->in_sync[0];
	submit.in_sync[1] = args->in_sync[1];
	submit.out_sync = args->out_sync;

	err = FUNC7(file, &submit);

	FUNC6(ctx);
out1:
	if (err)
		FUNC1(pipe->task_slab, task);
out0:
	FUNC4(bos);
	return err;
}