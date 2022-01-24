#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct intel_engine_execlists {TYPE_1__ tasklet; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; struct intel_engine_execlists execlists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct intel_engine_cs *engine)
{
	struct intel_engine_execlists * const execlists = &engine->execlists;

	if (FUNC1(&execlists->tasklet))
		/* And kick in case we missed a new request submission. */
		FUNC3(&execlists->tasklet);

	FUNC0("%s: depth->%d\n", engine->name,
		  FUNC2(&execlists->tasklet.count));
}