#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  count; int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  rb_root; } ;
struct intel_engine_execlists {TYPE_2__ tasklet; TYPE_1__ queue; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; struct intel_engine_execlists execlists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_engine_execlists* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct intel_engine_cs *engine)
{
	struct intel_engine_execlists * const execlists = &engine->execlists;

	/*
	 * After a GPU reset, we may have requests to replay. Do so now while
	 * we still have the forcewake to be sure that the GPU is not allowed
	 * to sleep before we restart and reload a context.
	 */
	FUNC0(!FUNC5(execlists));
	if (!FUNC2(&execlists->queue.rb_root))
		execlists->tasklet.func(execlists->tasklet.data);

	if (FUNC3(&execlists->tasklet))
		/* And kick in case we missed a new request submission. */
		FUNC7(&execlists->tasklet);
	FUNC1("%s: depth->%d\n", engine->name,
		  FUNC4(&execlists->tasklet.count));
}