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
struct ww_acquire_ctx {int dummy; } ;
struct vc4_file {int dummy; } ;
struct vc4_exec_info {struct drm_vc4_submit_cl* args; scalar_t__ ct0ea; scalar_t__ ct0ca; int /*<<< orphan*/  perfmon; int /*<<< orphan*/  unref_list; } ;
struct vc4_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  emit_seqno; int /*<<< orphan*/  dma_fence_context; int /*<<< orphan*/  v3d; } ;
struct drm_vc4_submit_cl {int flags; int pad2; scalar_t__ bin_cl_size; int /*<<< orphan*/  seqno; scalar_t__ out_sync; scalar_t__ in_sync; scalar_t__ perfmonid; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VC4_SUBMIT_CL_FIXED_RCL_ORDER ; 
 int VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X ; 
 int VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y ; 
 int VC4_SUBMIT_CL_USE_CLEAR_COLOR ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int FUNC5 (struct dma_fence*,int) ; 
 struct drm_syncobj* FUNC6 (struct drm_file*,scalar_t__) ; 
 int FUNC7 (struct drm_file*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_syncobj*) ; 
 struct vc4_exec_info* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vc4_exec_info*) ; 
 struct vc4_dev* FUNC11 (struct drm_device*) ; 
 int FUNC12 (struct drm_device*,struct drm_file*,struct vc4_exec_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct vc4_exec_info*) ; 
 int FUNC14 (struct drm_device*,struct vc4_exec_info*) ; 
 int FUNC15 (struct drm_device*,struct vc4_exec_info*) ; 
 int FUNC16 (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct vc4_file*,scalar_t__) ; 
 int FUNC18 (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*,struct drm_syncobj*) ; 
 int FUNC19 (struct vc4_dev*) ; 

int
FUNC20(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct vc4_dev *vc4 = FUNC11(dev);
	struct vc4_file *vc4file = file_priv->driver_priv;
	struct drm_vc4_submit_cl *args = data;
	struct drm_syncobj *out_sync = NULL;
	struct vc4_exec_info *exec;
	struct ww_acquire_ctx acquire_ctx;
	struct dma_fence *in_fence;
	int ret = 0;

	if (!vc4->v3d) {
		FUNC0("VC4_SUBMIT_CL with no VC4 V3D probed\n");
		return -ENODEV;
	}

	if ((args->flags & ~(VC4_SUBMIT_CL_USE_CLEAR_COLOR |
			     VC4_SUBMIT_CL_FIXED_RCL_ORDER |
			     VC4_SUBMIT_CL_RCL_ORDER_INCREASING_X |
			     VC4_SUBMIT_CL_RCL_ORDER_INCREASING_Y)) != 0) {
		FUNC0("Unknown flags: 0x%02x\n", args->flags);
		return -EINVAL;
	}

	if (args->pad2 != 0) {
		FUNC0("Invalid pad: 0x%08x\n", args->pad2);
		return -EINVAL;
	}

	exec = FUNC9(1, sizeof(*exec), GFP_KERNEL);
	if (!exec) {
		FUNC1("malloc failure on exec struct\n");
		return -ENOMEM;
	}

	ret = FUNC19(vc4);
	if (ret) {
		FUNC10(exec);
		return ret;
	}

	exec->args = args;
	FUNC2(&exec->unref_list);

	ret = FUNC12(dev, file_priv, exec);
	if (ret)
		goto fail;

	if (args->perfmonid) {
		exec->perfmon = FUNC17(vc4file,
						 args->perfmonid);
		if (!exec->perfmon) {
			ret = -ENOENT;
			goto fail;
		}
	}

	if (args->in_sync) {
		ret = FUNC7(file_priv, args->in_sync,
					     0, 0, &in_fence);
		if (ret)
			goto fail;

		/* When the fence (or fence array) is exclusively from our
		 * context we can skip the wait since jobs are executed in
		 * order of their submission through this ioctl and this can
		 * only have fences from a prior job.
		 */
		if (!FUNC3(in_fence,
					     vc4->dma_fence_context)) {
			ret = FUNC5(in_fence, true);
			if (ret) {
				FUNC4(in_fence);
				goto fail;
			}
		}

		FUNC4(in_fence);
	}

	if (exec->args->bin_cl_size != 0) {
		ret = FUNC14(dev, exec);
		if (ret)
			goto fail;
	} else {
		exec->ct0ca = 0;
		exec->ct0ea = 0;
	}

	ret = FUNC15(dev, exec);
	if (ret)
		goto fail;

	ret = FUNC16(dev, exec, &acquire_ctx);
	if (ret)
		goto fail;

	if (args->out_sync) {
		out_sync = FUNC6(file_priv, args->out_sync);
		if (!out_sync) {
			ret = -EINVAL;
			goto fail;
		}

		/* We replace the fence in out_sync in vc4_queue_submit since
		 * the render job could execute immediately after that call.
		 * If it finishes before our ioctl processing resumes the
		 * render job fence could already have been freed.
		 */
	}

	/* Clear this out of the struct we'll be putting in the queue,
	 * since it's part of our stack.
	 */
	exec->args = NULL;

	ret = FUNC18(dev, exec, &acquire_ctx, out_sync);

	/* The syncobj isn't part of the exec data and we need to free our
	 * reference even if job submission failed.
	 */
	if (out_sync)
		FUNC8(out_sync);

	if (ret)
		goto fail;

	/* Return the seqno for our job. */
	args->seqno = vc4->emit_seqno;

	return 0;

fail:
	FUNC13(vc4->dev, exec);

	return ret;
}