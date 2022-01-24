#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_engine_cs {int instance; int /*<<< orphan*/  class; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct intel_engine_cs *engine)
{
	/*
	 * Before we know what the uABI name for this engine will be,
	 * we still would like to keep track of this engine in the debug logs.
	 * We throw in a ' here as a reminder that this isn't its final name.
	 */
	FUNC0(FUNC2(engine->name, sizeof(engine->name), "%s'%u",
			     FUNC1(engine->class),
			     engine->instance) >= sizeof(engine->name));
}