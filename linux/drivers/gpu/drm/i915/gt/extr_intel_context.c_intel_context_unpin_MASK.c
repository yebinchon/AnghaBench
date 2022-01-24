#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_context {int /*<<< orphan*/  pin_mutex; int /*<<< orphan*/  gem_context; TYPE_3__* ops; TYPE_2__* timeline; TYPE_1__* engine; int /*<<< orphan*/  pin_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* unpin ) (struct intel_context*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  fence_context; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_context*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_context*) ; 

void FUNC11(struct intel_context *ce)
{
	if (FUNC7(FUNC1(&ce->pin_count, -1, 1)))
		return;

	/* We may be called from inside intel_context_pin() to evict another */
	FUNC5(ce);
	FUNC8(&ce->pin_mutex, SINGLE_DEPTH_NESTING);

	if (FUNC7(FUNC2(&ce->pin_count))) {
		FUNC0("%s context:%llx retire\n",
			  ce->engine->name, ce->timeline->fence_context);

		ce->ops->unpin(ce);

		FUNC3(ce->gem_context);
		FUNC4(ce);
	}

	FUNC9(&ce->pin_mutex);
	FUNC6(ce);
}