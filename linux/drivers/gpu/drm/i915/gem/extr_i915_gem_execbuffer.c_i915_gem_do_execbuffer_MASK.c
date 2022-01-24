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
typedef  int u64 ;
struct sync_file {int /*<<< orphan*/  file; } ;
struct i915_vma {int* exec_flags; scalar_t__ size; scalar_t__ private; struct i915_vma* batch; int /*<<< orphan*/  fence; int /*<<< orphan*/  obj; } ;
struct TYPE_4__ {int rq; } ;
struct i915_execbuffer {unsigned int* flags; int invalid_flags; int buffer_count; scalar_t__ batch_start_offset; scalar_t__ batch_len; int batch_flags; int /*<<< orphan*/  gem_context; struct drm_i915_gem_exec_object2* exec; struct i915_vma* batch; struct i915_vma* request; TYPE_1__* engine; int /*<<< orphan*/  context; TYPE_2__ reloc_cache; int /*<<< orphan*/  lut_size; struct drm_i915_private* i915; struct i915_vma** vma; struct drm_i915_gem_execbuffer2* args; struct drm_file* file; } ;
struct drm_syncobj {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_execbuffer2 {int flags; int buffer_count; scalar_t__ batch_start_offset; scalar_t__ batch_len; int rsvd2; } ;
struct drm_i915_gem_exec_object2 {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bond_execute; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ DBG_FORCE_RELOC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int EXEC_OBJECT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int I915_DISPATCH_PINNED ; 
 int I915_DISPATCH_SECURE ; 
 int I915_EXEC_FENCE_IN ; 
 int I915_EXEC_FENCE_OUT ; 
 int I915_EXEC_FENCE_SUBMIT ; 
 int I915_EXEC_IS_PINNED ; 
 int I915_EXEC_NO_RELOC ; 
 int I915_EXEC_SECURE ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int FUNC7 (struct i915_vma*) ; 
 int __EXEC_HAS_RELOC ; 
 int __EXEC_INTERNAL_FLAGS ; 
 int __EXEC_OBJECT_INTERNAL_FLAGS ; 
 int __EXEC_OBJECT_UNKNOWN_FLAGS ; 
 int __I915_EXEC_ILLEGAL_FLAGS ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*,struct drm_file*) ; 
 int FUNC9 (struct i915_execbuffer*,struct drm_syncobj**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_file*) ; 
 int FUNC13 (struct i915_execbuffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct i915_execbuffer*) ; 
 struct i915_vma* FUNC15 (struct i915_execbuffer*) ; 
 int FUNC16 (struct i915_execbuffer*,struct drm_file*,struct drm_i915_gem_execbuffer2*) ; 
 int /*<<< orphan*/  FUNC17 (struct i915_execbuffer*) ; 
 int FUNC18 (struct i915_execbuffer*) ; 
 int FUNC19 (struct i915_execbuffer*) ; 
 int FUNC20 (struct i915_execbuffer*) ; 
 int /*<<< orphan*/  FUNC21 (struct i915_execbuffer*) ; 
 scalar_t__ FUNC22 (struct i915_execbuffer*) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct i915_vma*) ; 
 int FUNC30 (struct i915_vma*,struct dma_fence*) ; 
 int FUNC31 (struct i915_vma*,struct dma_fence*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC40 (struct i915_execbuffer*,struct drm_syncobj**) ; 
 struct sync_file* FUNC41 (int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC42 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC43 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC44 (struct i915_vma*,int) ; 
 scalar_t__ FUNC45 (int) ; 

__attribute__((used)) static int
FUNC46(struct drm_device *dev,
		       struct drm_file *file,
		       struct drm_i915_gem_execbuffer2 *args,
		       struct drm_i915_gem_exec_object2 *exec,
		       struct drm_syncobj **fences)
{
	struct drm_i915_private *i915 = FUNC43(dev);
	struct i915_execbuffer eb;
	struct dma_fence *in_fence = NULL;
	struct dma_fence *exec_fence = NULL;
	struct sync_file *out_fence = NULL;
	int out_fence_fd = -1;
	int err;

	FUNC0(__EXEC_INTERNAL_FLAGS & ~__I915_EXEC_ILLEGAL_FLAGS);
	FUNC0(__EXEC_OBJECT_INTERNAL_FLAGS &
		     ~__EXEC_OBJECT_UNKNOWN_FLAGS);

	eb.i915 = i915;
	eb.file = file;
	eb.args = args;
	if (DBG_FORCE_RELOC || !(args->flags & I915_EXEC_NO_RELOC))
		args->flags |= __EXEC_HAS_RELOC;

	eb.exec = exec;
	eb.vma = (struct i915_vma **)(exec + args->buffer_count + 1);
	eb.vma[0] = NULL;
	eb.flags = (unsigned int *)(eb.vma + args->buffer_count + 1);

	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
	FUNC39(&eb.reloc_cache, eb.i915);

	eb.buffer_count = args->buffer_count;
	eb.batch_start_offset = args->batch_start_offset;
	eb.batch_len = args->batch_len;

	eb.batch_flags = 0;
	if (args->flags & I915_EXEC_SECURE) {
		if (FUNC5(i915) >= 11)
			return -ENODEV;

		/* Return -EPERM to trigger fallback code on old binaries. */
		if (!FUNC4(i915))
			return -EPERM;

		if (!FUNC12(file) || !FUNC10(CAP_SYS_ADMIN))
			return -EPERM;

		eb.batch_flags |= I915_DISPATCH_SECURE;
	}
	if (args->flags & I915_EXEC_IS_PINNED)
		eb.batch_flags |= I915_DISPATCH_PINNED;

	if (args->flags & I915_EXEC_FENCE_IN) {
		in_fence = FUNC42(FUNC36(args->rsvd2));
		if (!in_fence)
			return -EINVAL;
	}

	if (args->flags & I915_EXEC_FENCE_SUBMIT) {
		if (in_fence) {
			err = -EINVAL;
			goto err_in_fence;
		}

		exec_fence = FUNC42(FUNC36(args->rsvd2));
		if (!exec_fence) {
			err = -EINVAL;
			goto err_in_fence;
		}
	}

	if (args->flags & I915_EXEC_FENCE_OUT) {
		out_fence_fd = FUNC25(O_CLOEXEC);
		if (out_fence_fd < 0) {
			err = out_fence_fd;
			goto err_exec_fence;
		}
	}

	err = FUNC13(&eb);
	if (err)
		goto err_out_fence;

	FUNC2(!eb.lut_size);

	err = FUNC19(&eb);
	if (FUNC45(err))
		goto err_destroy;

	err = FUNC16(&eb, file, args);
	if (FUNC45(err))
		goto err_context;

	err = FUNC28(dev);
	if (err)
		goto err_engine;

	err = FUNC18(&eb);
	if (err) {
		/*
		 * If the user expects the execobject.offset and
		 * reloc.presumed_offset to be an exact match,
		 * as for using NO_RELOC, then we cannot update
		 * the execobject.offset until we have completed
		 * relocation.
		 */
		args->flags &= ~__EXEC_HAS_RELOC;
		goto err_vma;
	}

	if (FUNC45(*eb.batch->exec_flags & EXEC_OBJECT_WRITE)) {
		FUNC1("Attempting to use self-modifying batch buffer\n");
		err = -EINVAL;
		goto err_vma;
	}
	if (eb.batch_start_offset > eb.batch->size ||
	    eb.batch_len > eb.batch->size - eb.batch_start_offset) {
		FUNC1("Attempting to use out-of-bounds batch\n");
		err = -EINVAL;
		goto err_vma;
	}

	if (eb.batch_len == 0)
		eb.batch_len = eb.batch->size - eb.batch_start_offset;

	if (FUNC22(&eb)) {
		struct i915_vma *vma;

		vma = FUNC15(&eb);
		if (FUNC6(vma)) {
			err = FUNC7(vma);
			goto err_vma;
		}
	}

	/*
	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
	 * batch" bit. Hence we need to pin secure batches into the global gtt.
	 * hsw should have this fixed, but bdw mucks it up again. */
	if (eb.batch_flags & I915_DISPATCH_SECURE) {
		struct i915_vma *vma;

		/*
		 * So on first glance it looks freaky that we pin the batch here
		 * outside of the reservation loop. But:
		 * - The batch is already pinned into the relevant ppgtt, so we
		 *   already have the backing storage fully allocated.
		 * - No other BO uses the global gtt (well contexts, but meh),
		 *   so we don't really have issues with multiple objects not
		 *   fitting due to fragmentation.
		 * So this is actually safe.
		 */
		vma = FUNC27(eb.batch->obj, NULL, 0, 0, 0);
		if (FUNC6(vma)) {
			err = FUNC7(vma);
			goto err_vma;
		}

		eb.batch = vma;
	}

	/* All GPU relocation batches must be submitted prior to the user rq */
	FUNC2(eb.reloc_cache.rq);

	/* Allocate a request for this batch buffer nice and early. */
	eb.request = FUNC32(eb.context);
	if (FUNC6(eb.request)) {
		err = FUNC7(eb.request);
		goto err_batch_unpin;
	}

	if (in_fence) {
		err = FUNC30(eb.request, in_fence);
		if (err < 0)
			goto err_request;
	}

	if (exec_fence) {
		err = FUNC31(eb.request, exec_fence,
						   eb.engine->bond_execute);
		if (err < 0)
			goto err_request;
	}

	if (fences) {
		err = FUNC9(&eb, fences);
		if (err)
			goto err_request;
	}

	if (out_fence_fd != -1) {
		out_fence = FUNC41(&eb.request->fence);
		if (!out_fence) {
			err = -ENOMEM;
			goto err_request;
		}
	}

	/*
	 * Whilst this request exists, batch_obj will be on the
	 * active_list, and so will hold the active reference. Only when this
	 * request is retired will the the batch_obj be moved onto the
	 * inactive_list and lose its active reference. Hence we do not need
	 * to explicitly hold another reference here.
	 */
	eb.request->batch = eb.batch;
	if (eb.batch->private)
		FUNC34(eb.batch->private, eb.request);

	FUNC44(eb.request, eb.batch_flags);
	err = FUNC20(&eb);
err_request:
	FUNC8(eb.request, file);
	FUNC29(eb.request);

	if (fences)
		FUNC40(&eb, fences);

	if (out_fence) {
		if (err == 0) {
			FUNC23(out_fence_fd, out_fence->file);
			args->rsvd2 &= FUNC3(31, 0); /* keep in-fence */
			args->rsvd2 |= (u64)out_fence_fd << 32;
			out_fence_fd = -1;
		} else {
			FUNC24(out_fence->file);
		}
	}

err_batch_unpin:
	if (eb.batch_flags & I915_DISPATCH_SECURE)
		FUNC33(eb.batch);
	if (eb.batch->private)
		FUNC35(eb.batch->private);
err_vma:
	if (eb.exec)
		FUNC17(&eb);
	FUNC37(&dev->struct_mutex);
err_engine:
	FUNC21(&eb);
err_context:
	FUNC26(eb.gem_context);
err_destroy:
	FUNC14(&eb);
err_out_fence:
	if (out_fence_fd != -1)
		FUNC38(out_fence_fd);
err_exec_fence:
	FUNC11(exec_fence);
err_in_fence:
	FUNC11(in_fence);
	return err;
}