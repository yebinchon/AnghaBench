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
struct i915_request {struct i915_gem_context* gem_context; } ;
struct i915_gem_context {int remap_slice; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_L3_SLICES ; 
 int FUNC1 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC2(struct i915_request *rq)
{
	struct i915_gem_context *ctx = rq->gem_context;
	int i, err;

	if (!ctx->remap_slice)
		return 0;

	for (i = 0; i < MAX_L3_SLICES; i++) {
		if (!(ctx->remap_slice & FUNC0(i)))
			continue;

		err = FUNC1(rq, i);
		if (err)
			return err;
	}

	ctx->remap_slice = 0;
	return 0;
}