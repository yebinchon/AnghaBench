#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
typedef  struct i915_gem_context drm_file ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct i915_gem_context*) ; 
 int FUNC1 (struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC2 (struct drm_i915_private*,struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int FUNC11 (struct drm_i915_private*,struct i915_gem_context*) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_gem_context *ctx;
	struct drm_file *file;
	int err;

	file = FUNC3(i915);
	if (FUNC0(file))
		return FUNC1(file);

	err = -ENOMEM;
	FUNC5(&i915->drm.struct_mutex);
	ctx = FUNC2(i915, file);
	if (!FUNC0(ctx))
		err = FUNC11(i915, ctx);
	FUNC6(&i915->drm.struct_mutex);
	if (err)
		goto out;

	err = FUNC7(i915);
	if (err)
		goto out;

	FUNC9(i915);

	/* Here be dragons! Note that with S3RST any S3 may become S4! */
	FUNC10(i915);

	FUNC8(i915);

	FUNC5(&i915->drm.struct_mutex);
	err = FUNC11(i915, ctx);
	FUNC6(&i915->drm.struct_mutex);
out:
	FUNC4(i915, file);
	return err;
}