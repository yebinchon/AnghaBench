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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct i915_request {TYPE_2__ fence; struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct i915_request *request)
{
	struct intel_engine_cs *engine = request->engine;
	unsigned long flags;

	FUNC0("%s fence %llx:%lld -> -EIO\n",
		  engine->name, request->fence.context, request->fence.seqno);
	FUNC2(&request->fence, -EIO);

	FUNC5(&engine->active.lock, flags);
	FUNC1(request);
	FUNC3(request);
	FUNC6(&engine->active.lock, flags);

	FUNC4(engine);
}