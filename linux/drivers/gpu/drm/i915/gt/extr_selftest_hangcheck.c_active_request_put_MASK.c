#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct i915_request {TYPE_2__* engine; TYPE_1__ fence; } ;
struct TYPE_4__ {int /*<<< orphan*/  gt; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 scalar_t__ FUNC3 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i915_request *rq)
{
	int err = 0;

	if (!rq)
		return 0;

	if (FUNC3(rq, 0, 5 * HZ) < 0) {
		FUNC0("%s timed out waiting for completion of fence %llx:%lld\n",
			  rq->engine->name,
			  rq->fence.context,
			  rq->fence.seqno);
		FUNC1();

		FUNC4(rq->engine->gt);
		err = -EIO;
	}

	FUNC2(rq);

	return err;
}