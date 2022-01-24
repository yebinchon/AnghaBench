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
struct TYPE_4__ {int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct i915_request {int /*<<< orphan*/  gem_context; TYPE_2__ fence; TYPE_1__* engine; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct i915_request *rq, bool guilty)
{
	FUNC1("%s rq=%llx:%lld, guilty? %s\n",
		  rq->engine->name,
		  rq->fence.context,
		  rq->fence.seqno,
		  FUNC8(guilty));

	FUNC0(FUNC6(rq));

	if (guilty) {
		FUNC7(rq, -EIO);
		if (FUNC2(rq->gem_context))
			FUNC5(rq);
	} else {
		FUNC4(&rq->fence, -EAGAIN);
		FUNC3(rq->gem_context);
	}
}