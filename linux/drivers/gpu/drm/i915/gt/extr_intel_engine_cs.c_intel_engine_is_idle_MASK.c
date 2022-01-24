#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tasklet_struct {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  rb_root; } ;
struct TYPE_10__ {TYPE_4__ queue; struct tasklet_struct tasklet; } ;
struct intel_engine_cs {TYPE_5__ execlists; TYPE_3__* i915; int /*<<< orphan*/  gt; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {TYPE_2__ drm; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tasklet_struct*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_engine_cs*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct tasklet_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tasklet_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct tasklet_struct*) ; 

bool FUNC13(struct intel_engine_cs *engine)
{
	/* More white lies, if wedged, hw state is inconsistent */
	if (FUNC4(engine->gt))
		return true;

	if (!FUNC3(engine))
		return true;

	/* Waiting to drain ELSP? */
	if (FUNC2(&engine->execlists)) {
		struct tasklet_struct *t = &engine->execlists.tasklet;

		FUNC9(engine->i915->drm.pdev->irq);

		FUNC5();
		if (FUNC10(t)) {
			/* Must wait for any GPU reset in progress. */
			if (FUNC1(t))
				t->func(t->data);
			FUNC11(t);
		}
		FUNC6();

		/* Otherwise flush the tasklet if it was on another cpu */
		FUNC12(t);

		if (FUNC2(&engine->execlists))
			return false;
	}

	/* ELSP is empty, but there are ready requests? E.g. after reset */
	if (!FUNC0(&engine->execlists.queue.rb_root))
		return false;

	/* Ring stopped? */
	return FUNC7(engine);
}