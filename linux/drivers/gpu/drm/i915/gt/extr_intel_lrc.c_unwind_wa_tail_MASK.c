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
struct i915_request {int /*<<< orphan*/  tail; int /*<<< orphan*/  ring; scalar_t__ wa_tail; } ;

/* Variables and functions */
 scalar_t__ WA_TAIL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct i915_request *rq)
{
	rq->tail = FUNC1(rq->ring, rq->wa_tail - WA_TAIL_BYTES);
	FUNC0(rq->ring, rq->tail);
}