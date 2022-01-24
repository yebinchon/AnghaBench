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
struct intel_runtime_pm {int dummy; } ;
struct intel_engine_cs {int /*<<< orphan*/  wakeref; TYPE_1__* i915; } ;
struct TYPE_2__ {struct intel_runtime_pm runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct intel_runtime_pm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wf_ops ; 

void FUNC1(struct intel_engine_cs *engine)
{
	struct intel_runtime_pm *rpm = &engine->i915->runtime_pm;

	FUNC0(&engine->wakeref, rpm, &wf_ops);
}