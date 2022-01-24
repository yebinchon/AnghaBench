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
struct intel_engine_cs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_FAULT_VALID ; 

__attribute__((used)) static void FUNC2(struct intel_engine_cs *engine)
{
	FUNC1(engine, RING_FAULT_VALID, 0);
	FUNC0(engine);
}