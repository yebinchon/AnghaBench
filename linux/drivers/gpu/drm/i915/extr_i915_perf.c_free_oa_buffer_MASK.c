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
struct TYPE_4__ {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  vma; } ;
struct i915_perf_stream {TYPE_2__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_VMA_RELEASE_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct i915_perf_stream *stream)
{
	struct drm_i915_private *i915 = stream->dev_priv;

	FUNC1(&i915->drm.struct_mutex);

	FUNC0(&stream->oa_buffer.vma,
				   I915_VMA_RELEASE_MAP);

	FUNC2(&i915->drm.struct_mutex);

	stream->oa_buffer.vaddr = NULL;
}