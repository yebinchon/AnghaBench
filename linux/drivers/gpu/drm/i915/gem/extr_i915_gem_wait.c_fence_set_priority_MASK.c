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
struct i915_sched_attr {int dummy; } ;
struct dma_fence_array {int num_fences; struct dma_fence** fences; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*,struct i915_sched_attr const*) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 struct dma_fence_array* FUNC2 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC3(struct dma_fence *fence,
			       const struct i915_sched_attr *attr)
{
	/* Recurse once into a fence-array */
	if (FUNC1(fence)) {
		struct dma_fence_array *array = FUNC2(fence);
		int i;

		for (i = 0; i < array->num_fences; i++)
			FUNC0(array->fences[i], attr);
	} else {
		FUNC0(fence, attr);
	}
}