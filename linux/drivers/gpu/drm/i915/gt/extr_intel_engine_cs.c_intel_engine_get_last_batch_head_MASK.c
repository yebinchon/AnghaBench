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
typedef  int /*<<< orphan*/  u64 ;
struct intel_engine_cs {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_engine_cs const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_BBADDR ; 
 int /*<<< orphan*/  RING_BBADDR_UDW ; 

u64 FUNC3(const struct intel_engine_cs *engine)
{
	u64 bbaddr;

	if (FUNC2(engine->i915) >= 8)
		bbaddr = FUNC1(engine, RING_BBADDR, RING_BBADDR_UDW);
	else
		bbaddr = FUNC0(engine, RING_BBADDR);

	return bbaddr;
}