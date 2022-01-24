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
typedef  scalar_t__ u32 ;
struct intel_timeline_cacheline {int /*<<< orphan*/  vaddr; TYPE_1__* hwsp; } ;
struct intel_timeline {int /*<<< orphan*/  mutex; scalar_t__ hwsp_offset; struct intel_timeline_cacheline* hwsp_cacheline; } ;
struct i915_request {struct intel_timeline* timeline; struct intel_timeline_cacheline* hwsp_cacheline; } ;
struct TYPE_2__ {int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE_BITS ; 
 int CACHELINE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int FUNC1 (struct intel_timeline_cacheline*,struct i915_request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i915_request*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct i915_request *from,
			     struct i915_request *to,
			     u32 *hwsp)
{
	struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
	struct intel_timeline *tl = from->timeline;
	int err;

	FUNC0(to->timeline == tl);

	FUNC5(&tl->mutex, SINGLE_DEPTH_NESTING);
	err = FUNC3(from);
	if (!err)
		err = FUNC1(cl, to);
	if (!err) {
		if (FUNC4(cl == tl->hwsp_cacheline)) {
			*hwsp = tl->hwsp_offset;
		} else { /* across a seqno wrap, recover the original offset */
			*hwsp = FUNC2(cl->hwsp->vma) +
				FUNC7(cl->vaddr, CACHELINE_BITS) *
				CACHELINE_BYTES;
		}
	}
	FUNC6(&tl->mutex);

	return err;
}