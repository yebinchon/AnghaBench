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
typedef  int /*<<< orphan*/  u32 ;
struct perf_open_properties {scalar_t__ sample_flags; int /*<<< orphan*/  ctx_handle; scalar_t__ single_context; } ;
struct i915_perf_stream {scalar_t__ sample_flags; TYPE_2__* ops; int /*<<< orphan*/  link; struct i915_gem_context* ctx; struct drm_i915_private* dev_priv; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  streams; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; TYPE_1__ perf; } ;
struct drm_i915_perf_open_param {int flags; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct i915_perf_stream*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EACCES ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I915_PERF_FLAG_DISABLED ; 
 int I915_PERF_FLAG_FD_CLOEXEC ; 
 int I915_PERF_FLAG_FD_NONBLOCK ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 unsigned long O_CLOEXEC ; 
 unsigned long O_NONBLOCK ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,struct i915_perf_stream*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops ; 
 struct i915_gem_context* FUNC6 (struct drm_i915_file_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_gem_context*) ; 
 int FUNC8 (struct i915_perf_stream*,struct drm_i915_perf_open_param*,struct perf_open_properties*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_perf_stream*) ; 
 scalar_t__ i915_perf_stream_paranoid ; 
 int /*<<< orphan*/  FUNC10 (struct i915_perf_stream*) ; 
 struct i915_perf_stream* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct i915_perf_stream*) ; 

__attribute__((used)) static int
FUNC15(struct drm_i915_private *dev_priv,
			    struct drm_i915_perf_open_param *param,
			    struct perf_open_properties *props,
			    struct drm_file *file)
{
	struct i915_gem_context *specific_ctx = NULL;
	struct i915_perf_stream *stream = NULL;
	unsigned long f_flags = 0;
	bool privileged_op = true;
	int stream_fd;
	int ret;

	if (props->single_context) {
		u32 ctx_handle = props->ctx_handle;
		struct drm_i915_file_private *file_priv = file->driver_priv;

		specific_ctx = FUNC6(file_priv, ctx_handle);
		if (!specific_ctx) {
			FUNC0("Failed to look up context with ID %u for opening perf stream\n",
				  ctx_handle);
			ret = -ENOENT;
			goto err;
		}
	}

	/*
	 * On Haswell the OA unit supports clock gating off for a specific
	 * context and in this mode there's no visibility of metrics for the
	 * rest of the system, which we consider acceptable for a
	 * non-privileged client.
	 *
	 * For Gen8+ the OA unit no longer supports clock gating off for a
	 * specific context and the kernel can't securely stop the counters
	 * from updating as system-wide / global values. Even though we can
	 * filter reports based on the included context ID we can't block
	 * clients from seeing the raw / global counter values via
	 * MI_REPORT_PERF_COUNT commands and so consider it a privileged op to
	 * enable the OA unit by default.
	 */
	if (FUNC1(dev_priv) && specific_ctx)
		privileged_op = false;

	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
	 * we check a dev.i915.perf_stream_paranoid sysctl option
	 * to determine if it's ok to access system wide OA counters
	 * without CAP_SYS_ADMIN privileges.
	 */
	if (privileged_op &&
	    i915_perf_stream_paranoid && !FUNC4(CAP_SYS_ADMIN)) {
		FUNC0("Insufficient privileges to open system-wide i915 perf stream\n");
		ret = -EACCES;
		goto err_ctx;
	}

	stream = FUNC11(sizeof(*stream), GFP_KERNEL);
	if (!stream) {
		ret = -ENOMEM;
		goto err_ctx;
	}

	stream->dev_priv = dev_priv;
	stream->ctx = specific_ctx;

	ret = FUNC8(stream, param, props);
	if (ret)
		goto err_alloc;

	/* we avoid simply assigning stream->sample_flags = props->sample_flags
	 * to have _stream_init check the combination of sample flags more
	 * thoroughly, but still this is the expected result at this point.
	 */
	if (FUNC2(stream->sample_flags != props->sample_flags)) {
		ret = -ENODEV;
		goto err_flags;
	}

	FUNC12(&stream->link, &dev_priv->perf.streams);

	if (param->flags & I915_PERF_FLAG_FD_CLOEXEC)
		f_flags |= O_CLOEXEC;
	if (param->flags & I915_PERF_FLAG_FD_NONBLOCK)
		f_flags |= O_NONBLOCK;

	stream_fd = FUNC3("[i915_perf]", &fops, stream, f_flags);
	if (stream_fd < 0) {
		ret = stream_fd;
		goto err_open;
	}

	if (!(param->flags & I915_PERF_FLAG_DISABLED))
		FUNC9(stream);

	/* Take a reference on the driver that will be kept with stream_fd
	 * until its release.
	 */
	FUNC5(&dev_priv->drm);

	return stream_fd;

err_open:
	FUNC13(&stream->link);
err_flags:
	if (stream->ops->destroy)
		stream->ops->destroy(stream);
err_alloc:
	FUNC10(stream);
err_ctx:
	if (specific_ctx)
		FUNC7(specific_ctx);
err:
	return ret;
}