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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pending; } ;
struct intel_engine_cs {TYPE_2__ active; TYPE_1__ execlists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs* const) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
	unsigned long flags;

	FUNC2(engine);
	if (!FUNC0(engine->execlists.pending[0])) {
		FUNC3(&engine->active.lock, flags);
		FUNC1(engine);
		FUNC4(&engine->active.lock, flags);
	}
}