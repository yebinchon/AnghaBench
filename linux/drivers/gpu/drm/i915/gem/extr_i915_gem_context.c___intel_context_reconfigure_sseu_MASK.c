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
struct intel_sseu {int dummy; } ;
struct intel_context {struct intel_sseu sseu; TYPE_1__* engine; } ;
typedef  int /*<<< orphan*/  sseu ;
struct TYPE_2__ {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_context*,struct intel_sseu) ; 
 int FUNC3 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sseu*,struct intel_sseu*,int) ; 

__attribute__((used)) static int
FUNC6(struct intel_context *ce,
				 struct intel_sseu sseu)
{
	int ret;

	FUNC0(FUNC1(ce->engine->i915) < 8);

	ret = FUNC3(ce);
	if (ret)
		return ret;

	/* Nothing to do if unmodified. */
	if (!FUNC5(&ce->sseu, &sseu, sizeof(sseu)))
		goto unlock;

	ret = FUNC2(ce, sseu);
	if (!ret)
		ce->sseu = sseu;

unlock:
	FUNC4(ce);
	return ret;
}