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
struct intel_timeline {int /*<<< orphan*/  mutex; } ;
struct intel_context {struct intel_timeline* timeline; } ;
struct i915_execbuffer {struct intel_context* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_execbuffer*,struct intel_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct i915_execbuffer *eb)
{
	struct intel_context *ce = eb->context;
	struct intel_timeline *tl = ce->timeline;

	FUNC2(&tl->mutex);
	FUNC1(ce);
	FUNC3(&tl->mutex);

	FUNC0(eb, ce);
}