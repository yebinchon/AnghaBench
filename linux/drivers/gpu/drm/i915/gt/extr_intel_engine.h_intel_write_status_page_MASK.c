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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * addr; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct intel_engine_cs *engine, int reg, u32 value)
{
	/* Writing into the status page should be done sparingly. Since
	 * we do when we are uncertain of the device state, we take a bit
	 * of extra paranoia to try and ensure that the HWS takes the value
	 * we give and that it doesn't end up trapped inside the CPU!
	 */
	if (FUNC3(X86_FEATURE_CLFLUSH)) {
		FUNC2();
		FUNC1(&engine->status_page.addr[reg]);
		engine->status_page.addr[reg] = value;
		FUNC1(&engine->status_page.addr[reg]);
		FUNC2();
	} else {
		FUNC0(engine->status_page.addr[reg], value);
	}
}