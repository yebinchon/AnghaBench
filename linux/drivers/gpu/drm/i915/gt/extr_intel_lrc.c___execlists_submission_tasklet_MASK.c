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
struct TYPE_4__ {int /*<<< orphan*/ * pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_2__ execlists; TYPE_1__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct intel_engine_cs *const engine)
{
	FUNC1(&engine->active.lock);
	if (!engine->execlists.pending[0]) {
		FUNC2(); /* protect peeking at execlists->active */
		FUNC0(engine);
		FUNC3();
	}
}