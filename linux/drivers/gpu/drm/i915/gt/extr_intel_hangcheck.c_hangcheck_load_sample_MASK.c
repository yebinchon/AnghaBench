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
struct hangcheck {void* head; void* ring; int /*<<< orphan*/  acthd; } ;

/* Variables and functions */
 void* FUNC0 (struct intel_engine_cs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_HEAD ; 
 int /*<<< orphan*/  RING_START ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs*) ; 

__attribute__((used)) static void FUNC2(struct intel_engine_cs *engine,
				  struct hangcheck *hc)
{
	hc->acthd = FUNC1(engine);
	hc->ring = FUNC0(engine, RING_START);
	hc->head = FUNC0(engine, RING_HEAD);
}