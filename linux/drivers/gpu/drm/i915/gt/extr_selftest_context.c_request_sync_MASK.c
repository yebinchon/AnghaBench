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
struct i915_request {TYPE_1__* timeline; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 long FUNC4 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i915_request *rq)
{
	long timeout;
	int err = 0;

	FUNC1(rq);

	FUNC0(rq);
	timeout = FUNC4(rq, 0, HZ / 10);
	if (timeout < 0) {
		err = timeout;
	} else {
		FUNC5(&rq->timeline->mutex);
		FUNC3(rq);
		FUNC6(&rq->timeline->mutex);
	}

	FUNC2(rq);

	return err;
}