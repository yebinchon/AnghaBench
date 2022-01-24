#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_private {int /*<<< orphan*/  gt; } ;
struct drm_i915_gem_context_create_ext {int flags; int ctx_id; int /*<<< orphan*/  extensions; } ;
struct drm_file {int /*<<< orphan*/  driver_priv; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct create_ext {int /*<<< orphan*/  ctx; int /*<<< orphan*/  fpriv; } ;
struct TYPE_5__ {int /*<<< orphan*/  has_logical_contexts; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int I915_CONTEXT_CREATE_FLAGS_UNKNOWN ; 
 int I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_extensions ; 
 TYPE_1__* current ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 int FUNC10 (struct drm_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct create_ext*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct drm_device *dev, void *data,
				  struct drm_file *file)
{
	struct drm_i915_private *i915 = FUNC15(dev);
	struct drm_i915_gem_context_create_ext *args = data;
	struct create_ext ext_data;
	int ret;

	if (!FUNC1(i915)->has_logical_contexts)
		return -ENODEV;

	if (args->flags & I915_CONTEXT_CREATE_FLAGS_UNKNOWN)
		return -EINVAL;

	ret = FUNC12(&i915->gt);
	if (ret)
		return ret;

	ext_data.fpriv = file->driver_priv;
	if (FUNC5(ext_data.fpriv)) {
		FUNC2("client %s[%d] banned from creating ctx\n",
			  current->comm,
			  FUNC14(FUNC8(current, PIDTYPE_PID)));
		return -EIO;
	}

	ret = FUNC10(dev);
	if (ret)
		return ret;

	ext_data.ctx = FUNC9(i915, args->flags);
	FUNC13(&dev->struct_mutex);
	if (FUNC3(ext_data.ctx))
		return FUNC4(ext_data.ctx);

	if (args->flags & I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS) {
		ret = FUNC11(FUNC16(args->extensions),
					   create_extensions,
					   FUNC0(create_extensions),
					   &ext_data);
		if (ret)
			goto err_ctx;
	}

	ret = FUNC7(ext_data.ctx, ext_data.fpriv);
	if (ret < 0)
		goto err_ctx;

	args->ctx_id = ret;
	FUNC2("HW context %d created\n", args->ctx_id);

	return 0;

err_ctx:
	FUNC6(ext_data.ctx);
	return ret;
}