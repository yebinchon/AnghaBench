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
struct intel_uncore {int dummy; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GEN6_BSD_RNCID ; 
 int /*<<< orphan*/  GEN6_BSD_SLEEP_INDICATOR ; 
 int /*<<< orphan*/  GEN6_BSD_SLEEP_MSG_DISABLE ; 
 int /*<<< orphan*/  GEN6_BSD_SLEEP_PSMI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct i915_request *request)
{
	struct intel_uncore *uncore = request->engine->uncore;

	FUNC5(uncore, FORCEWAKE_ALL);

       /* Every tail move must follow the sequence below */

	/* Disable notification that the ring is IDLE. The GT
	 * will then assume that it is busy and bring it out of rc6.
	 */
	FUNC8(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
			      FUNC2(GEN6_BSD_SLEEP_MSG_DISABLE));

	/* Clear the context id. Here be magic! */
	FUNC7(uncore, GEN6_BSD_RNCID, 0x0);

	/* Wait for the ring not to be idle, i.e. for it to wake up. */
	if (FUNC3(uncore,
					 GEN6_BSD_SLEEP_PSMI_CONTROL,
					 GEN6_BSD_SLEEP_INDICATOR,
					 0,
					 1000, 0, NULL))
		FUNC0("timed out waiting for the BSD ring to wake up\n");

	/* Now that the ring is fully powered up, update the tail */
	FUNC4(request);

	/* Let the ring send IDLE messages to the GT again,
	 * and so let it sleep to conserve power when idle.
	 */
	FUNC8(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
			      FUNC1(GEN6_BSD_SLEEP_MSG_DISABLE));

	FUNC6(uncore, FORCEWAKE_ALL);
}