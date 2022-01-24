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
struct intel_context {int /*<<< orphan*/  timeline; TYPE_1__* engine; int /*<<< orphan*/  ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct intel_context *ce)
{
	ce->ring = FUNC5(ce->engine);
	if (!ce->ring)
		return -ENOMEM;

	FUNC0(ce->timeline);
	ce->timeline = FUNC3(ce->engine->gt, NULL);
	if (FUNC1(ce->timeline)) {
		FUNC4(ce->engine);
		return FUNC2(ce->timeline);
	}

	FUNC6(ce->timeline);

	return 0;
}