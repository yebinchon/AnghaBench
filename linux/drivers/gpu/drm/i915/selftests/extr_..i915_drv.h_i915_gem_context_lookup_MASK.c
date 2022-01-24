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
struct i915_gem_context {int /*<<< orphan*/  ref; } ;
struct drm_i915_file_private {int dummy; } ;

/* Variables and functions */
 struct i915_gem_context* FUNC0 (struct drm_i915_file_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline struct i915_gem_context *
FUNC4(struct drm_i915_file_private *file_priv, u32 id)
{
	struct i915_gem_context *ctx;

	FUNC2();
	ctx = FUNC0(file_priv, id);
	if (ctx && !FUNC1(&ctx->ref))
		ctx = NULL;
	FUNC3();

	return ctx;
}