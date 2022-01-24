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
struct tasklet_struct {int dummy; } ;
struct TYPE_2__ {struct tasklet_struct tasklet; } ;
struct intel_engine_cs {int /*<<< orphan*/  name; TYPE_1__ execlists; } ;
struct igt_atomic_section {int /*<<< orphan*/  name; int /*<<< orphan*/  (* critical_section_end ) () ;int /*<<< orphan*/  (* critical_section_begin ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tasklet_struct* const) ; 
 int /*<<< orphan*/  FUNC6 (struct tasklet_struct* const) ; 

__attribute__((used)) static int FUNC7(struct intel_engine_cs *engine,
				     const struct igt_atomic_section *p,
				     const char *mode)
{
	struct tasklet_struct * const t = &engine->execlists.tasklet;
	int err;

	FUNC0("i915_reset_engine(%s:%s) under %s\n",
		  engine->name, mode, p->name);

	FUNC5(t);
	p->critical_section_begin();

	err = FUNC1(engine, NULL);

	p->critical_section_end();
	FUNC6(t);

	if (err)
		FUNC2("i915_reset_engine(%s:%s) failed under %s\n",
		       engine->name, mode, p->name);

	return err;
}