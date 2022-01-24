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
struct intel_ring {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  emit; int /*<<< orphan*/  pin_count; struct i915_vma* vma; } ;
struct i915_vma {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_ring*,int /*<<< orphan*/ ) ; 

void FUNC9(struct intel_ring *ring)
{
	struct i915_vma *vma = ring->vma;

	if (!FUNC1(&ring->pin_count))
		return;

	/* Discard any unused bytes beyond that submitted to hw. */
	FUNC8(ring, ring->emit);

	FUNC7(vma);
	if (FUNC3(vma))
		FUNC6(vma);
	else
		FUNC2(vma->obj);

	FUNC0(!ring->vaddr);
	ring->vaddr = NULL;

	FUNC5(vma);
	FUNC4(vma);
}