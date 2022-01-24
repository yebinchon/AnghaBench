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
struct i915_gem_context {struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;

/* Variables and functions */
 struct i915_address_space* FUNC0 (struct i915_gem_context*,struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_address_space*) ; 

__attribute__((used)) static void FUNC2(struct i915_gem_context *ctx,
			   struct i915_address_space *vm)
{
	if (vm == ctx->vm)
		return;

	vm = FUNC0(ctx, vm);
	if (vm)
		FUNC1(vm);
}