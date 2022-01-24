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
struct i915_gpu_state {int /*<<< orphan*/  epoch; int /*<<< orphan*/  display; int /*<<< orphan*/  overlay; int /*<<< orphan*/  capture; int /*<<< orphan*/  uptime; int /*<<< orphan*/  boottime; int /*<<< orphan*/  time; struct drm_i915_private* i915; int /*<<< orphan*/  ref; } ;
struct TYPE_4__ {int /*<<< orphan*/  last_init_time; } ;
struct TYPE_3__ {int /*<<< orphan*/  first_error; } ;
struct drm_i915_private {TYPE_2__ gt; TYPE_1__ gpu_error; } ;
struct compress {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_FAIL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct i915_gpu_state* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i915_gpu_state*) ; 
 struct i915_gpu_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_gpu_state*,struct compress*) ; 
 int /*<<< orphan*/  FUNC9 (struct compress*) ; 
 int /*<<< orphan*/  FUNC10 (struct compress*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct i915_gpu_state*,struct compress*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC16 (struct i915_gpu_state*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i915_gpu_state* FUNC22 (int,int /*<<< orphan*/ ) ; 

struct i915_gpu_state *
FUNC23(struct drm_i915_private *i915)
{
	struct i915_gpu_state *error;
	struct compress compress;

	/* Check if GPU capture has been disabled */
	error = FUNC2(i915->gpu_error.first_error);
	if (FUNC1(error))
		return error;

	error = FUNC22(sizeof(*error), ALLOW_FAIL);
	if (!error) {
		FUNC13(i915, -ENOMEM);
		return FUNC0(-ENOMEM);
	}

	if (!FUNC10(&compress)) {
		FUNC16(error);
		FUNC13(i915, -ENOMEM);
		return FUNC0(-ENOMEM);
	}

	FUNC17(&error->ref);
	error->i915 = i915;

	error->time = FUNC20();
	error->boottime = FUNC19();
	error->uptime = FUNC21(FUNC18(), i915->gt.last_init_time);
	error->capture = jiffies;

	FUNC6(error);
	FUNC5(error);
	FUNC8(error, &compress);
	FUNC7(error);
	FUNC11(error);
	FUNC12(error, &compress);

	error->overlay = FUNC15(i915);
	error->display = FUNC14(i915);

	error->epoch = FUNC3(error);

	FUNC4(error);
	FUNC9(&compress);

	return error;
}