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
struct i915_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  ring; int /*<<< orphan*/  engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_TAIL ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i915_request *request)
{
	FUNC1(request);

	FUNC0(request->engine, RING_TAIL,
		     FUNC2(request->ring, request->tail));
}